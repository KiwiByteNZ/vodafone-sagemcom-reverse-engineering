#include <stdio.h>

#include "libavcodec/avcodec.h"
#include "libavformat/avformat.h"
#include "libavutil/error.h"
#include "libavutil/frame.h"

static void report_error(const char *where, int err)
{
    char text[AV_ERROR_MAX_STRING_SIZE];
    av_strerror(err, text, sizeof(text));
    fprintf(stderr, "%s: %s\n", where, text);
}

int main(int argc, char **argv)
{
    AVInputFormat *forced;
    AVFormatContext *format = NULL;
    AVCodecContext *codec_context = NULL;
    AVCodec *codec;
    AVPacket packet;
    AVFrame *frame = NULL;
    int audio_stream = -1;
    int ret = 1;
    unsigned int i;

    if (argc != 2) {
        fprintf(stderr, "usage: %s input.mp3\n", argv[0]);
        return 2;
    }

    av_register_all();
    forced = av_find_input_format("mp3");
    if (!forced) {
        fprintf(stderr, "mp3 demuxer unavailable\n");
        goto done;
    }

    ret = avformat_open_input(&format, argv[1], forced, NULL);
    if (ret < 0) {
        report_error("avformat_open_input", ret);
        goto done;
    }

    ret = avformat_find_stream_info(format, NULL);
    if (ret < 0) {
        report_error("avformat_find_stream_info", ret);
        goto done;
    }

    for (i = 0; i < format->nb_streams; i++) {
        if (format->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_AUDIO) {
            audio_stream = (int)i;
            break;
        }
    }
    if (audio_stream < 0) {
        fprintf(stderr, "no audio stream\n");
        ret = AVERROR_STREAM_NOT_FOUND;
        goto done;
    }

    codec = avcodec_find_decoder(format->streams[audio_stream]->codecpar->codec_id);
    if (!codec) {
        fprintf(stderr, "decoder unavailable\n");
        ret = AVERROR_DECODER_NOT_FOUND;
        goto done;
    }
    codec_context = avcodec_alloc_context3(codec);
    frame = av_frame_alloc();
    if (!codec_context || !frame) {
        ret = AVERROR(ENOMEM);
        goto done;
    }
    ret = avcodec_parameters_to_context(codec_context,
                                        format->streams[audio_stream]->codecpar);
    if (ret < 0 || (ret = avcodec_open2(codec_context, codec, NULL)) < 0) {
        report_error("decoder setup", ret);
        goto done;
    }

    av_init_packet(&packet);
    while ((ret = av_read_frame(format, &packet)) >= 0) {
        if (packet.stream_index == audio_stream) {
            int send_ret = avcodec_send_packet(codec_context, &packet);
            if (send_ret >= 0) {
                while (avcodec_receive_frame(codec_context, frame) >= 0)
                    av_frame_unref(frame);
            }
        }
        av_packet_unref(&packet);
    }
    ret = 0;

done:
    av_frame_free(&frame);
    avcodec_free_context(&codec_context);
    avformat_close_input(&format);
    return ret < 0 ? 1 : ret;
}

// DecompileStringRefs.java
import ghidra.app.decompiler.*;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.symbol.*;
import java.nio.charset.StandardCharsets;
import java.util.*;

public class DecompileStringRefs extends GhidraScript {
    private Address findAscii(String needle) throws Exception {
        Memory mem = currentProgram.getMemory();
        byte[] want = (needle + "\0").getBytes(StandardCharsets.US_ASCII);
        Address cur = mem.getMinAddress();
        while (cur != null) {
            Address hit = mem.findBytes(cur, want, null, true, monitor);
            if (hit != null) return hit;
            break;
        }
        return null;
    }
    public void run() throws Exception {
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        Set<Function> funcs = new LinkedHashSet<>();
        Address ds = toAddr(0x3c4f4);
        Function dispatcher = getFunctionAt(ds);
        if (dispatcher == null) {
            AddressSet body = new AddressSet(ds, toAddr(0x3d66f));
            clearListing(ds, toAddr(0x3d66f));
            disassemble(ds);
            dispatcher = currentProgram.getFunctionManager().createFunction(
                "NTPDispatcher", ds, body, SourceType.USER_DEFINED);
        }
        if (dispatcher != null) funcs.add(dispatcher);
        for (String s : new String[]{"NTP_SetConfig", "NTP_AddConfig", "NTP_GetList", "a{sv}"}) {
            Address a = findAscii(s);
            println("STRING " + s + " @ " + a);
            if (a == null) continue;
            for (Reference r : getReferencesTo(a)) {
                Function f = getFunctionContaining(r.getFromAddress());
                if (f == null) f = getFunctionBefore(r.getFromAddress());
                println("  REF " + r.getFromAddress() + " FUNC/BEFORE " + f);
                if (f != null) funcs.add(f);
            }
        }
        for (Function f : funcs) {
            println("\n===== " + f.getName() + " @ " + f.getEntryPoint() + " =====");
            DecompileResults dr = di.decompileFunction(f, 120, monitor);
            if (dr.decompileCompleted()) println(dr.getDecompiledFunction().getC());
            else println("DECOMPILE FAILED: " + dr.getErrorMessage());
        }
        di.dispose();
    }
}

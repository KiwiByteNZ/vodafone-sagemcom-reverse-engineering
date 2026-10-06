// @category VodafoneAudit
import ghidra.app.decompiler.DecompInterface;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.listing.Function;
import ghidra.program.model.symbol.Reference;
import ghidra.util.task.ConsoleTaskMonitor;

public class FindTelnetRefs extends GhidraScript {
    public void run() throws Exception {
        DecompInterface d = new DecompInterface();
        d.openProgram(currentProgram);
        for (String raw : getScriptArgs()) {
            Address a = toAddr(raw);
            println("REFERENCES TO " + a);
            for (Reference r : getReferencesTo(a)) {
                Function f = getFunctionContaining(r.getFromAddress());
                println("REF " + r + " FUNCTION " + f);
                if (f != null) {
                    println(d.decompileFunction(f, 60, new ConsoleTaskMonitor())
                        .getDecompiledFunction().getC());
                }
            }
        }
        d.dispose();
    }
}

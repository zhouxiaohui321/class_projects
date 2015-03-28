import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;

import cs132.util.ProblemException;
import cs132.vapor.ast.VDataSegment;
import cs132.vapor.ast.VFunction;
import cs132.vapor.ast.VOperand;
import cs132.vapor.ast.VaporProgram;
import cs132.vapor.ast.VBuiltIn.Op;
import cs132.vapor.parser.VaporParser;

public class VM2M {
	public static void main(String [] args) {
		File testDir = new File("../hw5-tester/tests"); // create a folder called tests, and put the tests in it
		for (final File fileEntry : testDir.listFiles()) {
			if (fileEntry.isFile()) {
				FileInputStream in = null;
				try {
					in = new FileInputStream(fileEntry.getAbsoluteFile());
				}
				catch (FileNotFoundException err) {
					err.printStackTrace();
				}
				try {
					System.out.println("\n\nProcessing: " + fileEntry.getName() + "\n-----------------------\n");
					String result = FirstRoundVisitor.generateMIPSCode(parseVapor(in, System.err));
					System.out.println(result + "==========================\n");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	
	

	public static VaporProgram parseVapor(InputStream in, PrintStream err) throws IOException{
		Op[] ops = {
				Op.Add, Op.Sub, Op.MulS, Op.Eq, Op.Lt, Op.LtS,
				Op.PrintIntS, Op.HeapAllocZ, Op.Error,
		};

		String[] registers = {
				"v0", "v1",
				"a0", "a1", "a2", "a3",
				"t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7",
				"s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7",
				"t8",
		};
		boolean allowStack = true;
		boolean allowLocals = false;

		VaporProgram program;
		try {
			program = VaporParser.run(new InputStreamReader(in), 1, 1,
					java.util.Arrays.asList(ops),
					allowLocals, registers, allowStack);
		}
		catch (ProblemException ex) {
			err.println(ex.getMessage());
			return null;
		}

		return program;
	}

}

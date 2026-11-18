import com.sun.source.util.JavacTask;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.tools.Diagnostic;
import javax.tools.DiagnosticCollector;
import javax.tools.JavaCompiler;
import javax.tools.JavaFileObject;
import javax.tools.StandardJavaFileManager;
import javax.tools.ToolProvider;

/**
 * Parser-only Android source validation without local Android SDK/android.jar.
 * IMPORTANT: successful parsing is NOT a full Android16 typecheck or build.
 */
public final class JavacSyntaxCheck {
    public static void main(String[] files) throws IOException {
        JavaCompiler compiler = ToolProvider.getSystemJavaCompiler();
        if (compiler == null || files.length == 0) {
            throw new IllegalStateException("JDK javac and Java source inputs required");
        }
        DiagnosticCollector<JavaFileObject> messages = new DiagnosticCollector<>();
        try (StandardJavaFileManager fm =
                compiler.getStandardFileManager(messages, null, null)) {
            List<String> options = Arrays.asList("-proc:none");
            JavacTask task = (JavacTask) compiler.getTask(
                    null, fm, messages, options, null,
                    fm.getJavaFileObjectsFromStrings(Arrays.asList(files)));
            task.parse();
        }
        List<String> errors = new ArrayList<>();
        for (Diagnostic<? extends JavaFileObject> message : messages.getDiagnostics()) {
            if (message.getKind() == Diagnostic.Kind.ERROR) {
                errors.add(message.toString());
            }
        }
        if (!errors.isEmpty()) {
            for (String error : errors) System.err.println(error);
            System.exit(1);
        }
        System.out.println("PASS parsed " + files.length
                + " Java sources; Android SDK typechecking is still required");
    }
}

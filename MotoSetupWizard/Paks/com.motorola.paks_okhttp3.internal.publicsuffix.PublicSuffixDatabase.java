package okhttp3.internal.publicsuffix;
import java.lang.String;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public final class PublicSuffixDatabase extends Object
{
/*
 * Field Definitions.
 */
      private final AtomicBoolean a;
      private final CountDownLatch b;
      private byte[] c;
      private byte[] d;
      private static final byte[] e;
      private static final String[] f;
      private static final String[] g;
      private static final PublicSuffixDatabase h;
/*
 * Declared Constructors.
 */
    public PublicSuffixDatabase() { ... }
    private static String a(byte[], byte[][], int) { ... }
    private String[] b(String[]) { ... }
    public static PublicSuffixDatabase c() { ... }
    public String d(String) { ... }
    private void e() { ... }
    private void f() { ... }

} 
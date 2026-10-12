package androidx.emoji2.text;
import androidx.emoji2.text.EmojiCompat$GlyphChecker;
import androidx.emoji2.text.EmojiCompat$InitCallback;
import android.os.Handler;
import java.util.Set;
import androidx.emoji2.text.EmojiCompat$SpanFactory;
import androidx.emoji2.text.EmojiCompat$Config;
import androidx.emoji2.text.EmojiCompat$CompatInternal;
import java.lang.CharSequence;
import java.lang.Throwable;
import android.text.Editable;
import androidx.emoji2.text.EmojiCompat$MetadataRepoLoader;
import android.view.inputmethod.InputConnection;
import java.lang.Object;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import java.util.concurrent.locks.ReadWriteLock;

public class EmojiCompat extends Object
{
/*
 * Field Definitions.
 */
      private static final Object CONFIG_LOCK;
      private static final Object INSTANCE_LOCK;
      final int[] mEmojiAsDefaultStyleExceptions;
      private final int mEmojiSpanIndicatorColor;
      private final boolean mEmojiSpanIndicatorEnabled;
      private final EmojiCompat$GlyphChecker mGlyphChecker;
      private final EmojiCompat$CompatInternal mHelper;
      private final Set mInitCallbacks;
      private final ReadWriteLock mInitLock;
      private volatile int mLoadState;
      private final Handler mMainHandler;
      private final int mMetadataLoadStrategy;
      final EmojiCompat$MetadataRepoLoader mMetadataLoader;
      final boolean mReplaceAll;
      private final EmojiCompat$SpanFactory mSpanFactory;
      final boolean mUseEmojiAsDefaultStyle;
      private static volatile EmojiCompat sInstance;
/*
 * Declared Constructors.
 */
    private EmojiCompat(EmojiCompat$Config) { ... }
    static EmojiCompat$SpanFactory access$000(EmojiCompat) { ... }
    static EmojiCompat$GlyphChecker access$100(EmojiCompat) { ... }
    public static EmojiCompat get() { ... }
    public int getEmojiSpanIndicatorColor() { ... }
    public int getLoadState() { ... }
    public static boolean handleDeleteSurroundingText(InputConnection, Editable, int, int, boolean) { ... }
    public static boolean handleOnKeyDown(Editable, int, KeyEvent) { ... }
    public static EmojiCompat init(EmojiCompat$Config) { ... }
    public static boolean isConfigured() { ... }
    public boolean isEmojiSpanIndicatorEnabled() { ... }
    private boolean isInitialized() { ... }
    public void load() { ... }
    private void loadMetadata() { ... }
     void onMetadataLoadFailed(Throwable) { ... }
     void onMetadataLoadSuccess() { ... }
    public CharSequence process(CharSequence) { ... }
    public CharSequence process(CharSequence, int, int) { ... }
    public CharSequence process(CharSequence, int, int, int) { ... }
    public CharSequence process(CharSequence, int, int, int, int) { ... }
    public void registerInitCallback(EmojiCompat$InitCallback) { ... }
    public void unregisterInitCallback(EmojiCompat$InitCallback) { ... }
    public void updateEditorInfo(EditorInfo) { ... }

} 

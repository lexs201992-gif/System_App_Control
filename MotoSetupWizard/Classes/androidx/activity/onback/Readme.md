package androidx.activity;
import androidx.activity.Cancellable;
import kotlin.jvm.functions.Function0;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class OnBackPressedCallback extends Object
{
/*
 * Field Definitions.
 */
      private final CopyOnWriteArrayList cancellables;
      private Function0 enabledChangedCallback;
      private boolean isEnabled;
/*
 * Declared Constructors.
 */
    public OnBackPressedCallback(boolean) { ... }
    public final void addCancellable(Cancellable) { ... }
    public abstract void handleOnBackPressed() { ... }
    public final boolean isEnabled() { ... }
    public final void remove() { ... }
    public final void removeCancellable(Cancellable) { ... }
    public final void setEnabled(boolean) { ... }
    public final void setEnabledChangedCallback$activity_release(Function0) { ... }

} 

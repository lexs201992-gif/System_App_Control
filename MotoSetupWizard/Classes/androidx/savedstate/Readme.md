package androidx.savedstate;
import androidx.lifecycle.LifecycleOwner;
import java.lang.Class;
import androidx.savedstate.SavedStateRegistry$Companion;
import androidx.savedstate.Recreator$SavedStateProvider;
import android.os.Bundle;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.savedstate.SavedStateRegistry$SavedStateProvider;
import androidx.lifecycle.Lifecycle$Event;
import java.lang.String;
import androidx.lifecycle.Lifecycle;

public final class SavedStateRegistry extends Object
{
/*
 * Field Definitions.
 */
      private static final SavedStateRegistry$Companion Companion;
      private boolean attached;
      private final SafeIterableMap components;
      private boolean isAllowingSavingState;
      private boolean isRestored;
      private Recreator$SavedStateProvider recreatorProvider;
      private Bundle restoredState;
/*
 * Declared Constructors.
 */
    public SavedStateRegistry() { ... }
    public static void $r8$lambda$AUDDdpkzZrJMhBj0r-_9pI-j6hA(SavedStateRegistry, LifecycleOwner, Lifecycle$Event) { ... }
    public final Bundle consumeRestoredStateForKey(String) { ... }
    public final SavedStateRegistry$SavedStateProvider getSavedStateProvider(String) { ... }
    private static final void performAttach$lambda$4(SavedStateRegistry, LifecycleOwner, Lifecycle$Event) { ... }
    public final void performAttach$savedstate_release(Lifecycle) { ... }
    public final void performRestore$savedstate_release(Bundle) { ... }
    public final void performSave(Bundle) { ... }
    public final void registerSavedStateProvider(String, SavedStateRegistry$SavedStateProvider) { ... }
    public final void runOnNextRecreation(Class) { ... }

} 

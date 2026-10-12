package androidx.lifecycle;
import androidx.lifecycle.LifecycleObserver;
import java.util.concurrent.atomic.AtomicReference;
import androidx.lifecycle.Lifecycle$State;

public abstract class Lifecycle extends Object
{
/*
 * Field Definitions.
 */
       AtomicReference mInternalScopeRef;
/*
 * Declared Constructors.
 */
    public Lifecycle() { ... }
    public abstract void addObserver(LifecycleObserver) { ... }
    public abstract Lifecycle$State getCurrentState() { ... }
    public abstract void removeObserver(LifecycleObserver) { ... }

} 

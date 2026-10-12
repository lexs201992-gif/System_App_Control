package kotlin.coroutines;
import java.lang.Object;
import kotlin.coroutines.CoroutineContext;

public abstract interface Continuation
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract CoroutineContext getContext() { ... }
    public abstract void resumeWith(Object) { ... }

} 

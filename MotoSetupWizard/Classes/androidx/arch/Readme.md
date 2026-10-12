package androidx.arch.core.executor;
import java.lang.Runnable;

public abstract class TaskExecutor extends Object
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public TaskExecutor() { ... }
    public abstract void executeOnDiskIO(Runnable) { ... }
    public abstract boolean isMainThread() { ... }
    public abstract void postToMainThread(Runnable) { ... }

} 

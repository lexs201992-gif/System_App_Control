package androidx.startup;
import java.lang.Object;
import android.content.Context;
import java.util.List;

public abstract interface Initializer
{
/*
 * Field Definitions.
 */
/*
 * Declared Constructors.
 */
    public abstract Object create(Context) { ... }
    public abstract List dependencies() { ... }

} 

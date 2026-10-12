package dagger.hilt.android.internal.managers;
import java.lang.String;
import java.lang.Object;
import androidx.lifecycle.k;
import android.content.Context;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;

public final class ViewComponentManager$FragmentContextWrapper extends ContextWrapper
{
/*
 * Field Definitions.
 */
      private Fragment a;
      private LayoutInflater b;
      private LayoutInflater c;
      private final k d;
/*
 * Declared Constructors.
 */
     ViewComponentManager$FragmentContextWrapper(Context, Fragment) { ... }
     ViewComponentManager$FragmentContextWrapper(LayoutInflater, Fragment) { ... }
    static Fragment a(ViewComponentManager$FragmentContextWrapper, Fragment) { ... }
    static LayoutInflater b(ViewComponentManager$FragmentContextWrapper, LayoutInflater) { ... }
    static LayoutInflater c(ViewComponentManager$FragmentContextWrapper, LayoutInflater) { ... }
    public Object getSystemService(String) { ... }

} 
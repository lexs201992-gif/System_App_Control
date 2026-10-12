package androidx.appcompat.view;
import java.lang.Object;
import java.lang.CharSequence;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

public abstract class ActionMode extends Object
{
/*
 * Field Definitions.
 */
      private Object mTag;
      private boolean mTitleOptionalHint;
/*
 * Declared Constructors.
 */
    public ActionMode() { ... }
    public abstract void finish() { ... }
    public abstract View getCustomView() { ... }
    public abstract Menu getMenu() { ... }
    public abstract MenuInflater getMenuInflater() { ... }
    public abstract CharSequence getSubtitle() { ... }
    public Object getTag() { ... }
    public abstract CharSequence getTitle() { ... }
    public boolean getTitleOptionalHint() { ... }
    public abstract void invalidate() { ... }
    public abstract boolean isTitleOptional() { ... }
    public abstract void setCustomView(View) { ... }
    public abstract void setSubtitle(int) { ... }
    public abstract void setSubtitle(CharSequence) { ... }
    public void setTag(Object) { ... }
    public abstract void setTitle(int) { ... }
    public abstract void setTitle(CharSequence) { ... }
    public void setTitleOptionalHint(boolean) { ... }

} 

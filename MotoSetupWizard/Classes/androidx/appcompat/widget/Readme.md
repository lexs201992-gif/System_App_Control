package androidx.appcompat.widget;
import androidx.appcompat.widget.AbsActionBarView$VisibilityAnimListener;
import android.util.AttributeSet;
import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.ActionMenuPresenter;
import android.content.res.Configuration;
import androidx.core.view.ViewPropertyAnimatorCompat;
import android.view.MotionEvent;
import androidx.appcompat.widget.ActionMenuView;

abstract class AbsActionBarView extends ViewGroup
{
/*
 * Field Definitions.
 */
      protected ActionMenuPresenter mActionMenuPresenter;
      protected int mContentHeight;
      private boolean mEatingHover;
      private boolean mEatingTouch;
      protected ActionMenuView mMenuView;
      protected final Context mPopupContext;
      protected final AbsActionBarView$VisibilityAnimListener mVisAnimListener;
      protected ViewPropertyAnimatorCompat mVisibilityAnim;
/*
 * Declared Constructors.
 */
     AbsActionBarView(Context) { ... }
     AbsActionBarView(Context, AttributeSet) { ... }
     AbsActionBarView(Context, AttributeSet, int) { ... }
    static void access$001(AbsActionBarView, int) { ... }
    static void access$101(AbsActionBarView, int) { ... }
    protected int measureChildView(View, int, int, int) { ... }
    protected static int next(int, int, boolean) { ... }
    protected void onConfigurationChanged(Configuration) { ... }
    public boolean onHoverEvent(MotionEvent) { ... }
    public boolean onTouchEvent(MotionEvent) { ... }
    protected int positionChild(View, int, int, int, boolean) { ... }
    public void setContentHeight(int) { ... }
    public void setVisibility(int) { ... }
    public ViewPropertyAnimatorCompat setupAnimatorToVisibility(int, long) { ... }

} 

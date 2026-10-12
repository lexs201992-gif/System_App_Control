package androidx.appcompat.app;
import androidx.core.widget.NestedScrollView;
import android.view.ViewGroup;
import java.lang.CharSequence;
import android.view.Window;
import android.widget.TextView;
import android.widget.ImageView;
import android.os.Handler;
import android.content.DialogInterface$OnClickListener;
import android.view.View$OnClickListener;
import androidx.appcompat.app.AppCompatDialog;
import android.widget.ListAdapter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ListView;
import android.content.Context;

 class AlertController extends Object
{
/*
 * Field Definitions.
 */
       ListAdapter mAdapter;
      private int mAlertDialogLayout;
      private final View$OnClickListener mButtonHandler;
      private final int mButtonIconDimen;
       Button mButtonNegative;
      private Drawable mButtonNegativeIcon;
       Message mButtonNegativeMessage;
      private CharSequence mButtonNegativeText;
       Button mButtonNeutral;
      private Drawable mButtonNeutralIcon;
       Message mButtonNeutralMessage;
      private CharSequence mButtonNeutralText;
      private int mButtonPanelLayoutHint;
      private int mButtonPanelSideLayout;
       Button mButtonPositive;
      private Drawable mButtonPositiveIcon;
       Message mButtonPositiveMessage;
      private CharSequence mButtonPositiveText;
       int mCheckedItem;
      private final Context mContext;
      private View mCustomTitleView;
      final AppCompatDialog mDialog;
       Handler mHandler;
      private Drawable mIcon;
      private int mIconId;
      private ImageView mIconView;
       int mListItemLayout;
       int mListLayout;
       ListView mListView;
      private CharSequence mMessage;
      private TextView mMessageView;
       int mMultiChoiceItemLayout;
       NestedScrollView mScrollView;
      private boolean mShowTitle;
       int mSingleChoiceItemLayout;
      private CharSequence mTitle;
      private TextView mTitleView;
      private View mView;
      private int mViewLayoutResId;
      private int mViewSpacingBottom;
      private int mViewSpacingLeft;
      private int mViewSpacingRight;
      private boolean mViewSpacingSpecified;
      private int mViewSpacingTop;
      private final Window mWindow;
/*
 * Declared Constructors.
 */
    public AlertController(Context, AppCompatDialog, Window) { ... }
    static boolean canTextInput(View) { ... }
    private void centerButton(Button) { ... }
    public int getIconAttributeResId(int) { ... }
    public ListView getListView() { ... }
    public void installContent() { ... }
    public boolean onKeyDown(int, KeyEvent) { ... }
    public boolean onKeyUp(int, KeyEvent) { ... }
    private ViewGroup resolvePanel(View, View) { ... }
    private int selectContentView() { ... }
    public void setButton(int, CharSequence, DialogInterface$OnClickListener, Message, Drawable) { ... }
    public void setCustomTitle(View) { ... }
    public void setIcon(int) { ... }
    public void setIcon(Drawable) { ... }
    public void setMessage(CharSequence) { ... }
    private void setScrollIndicators(ViewGroup, View, int, int) { ... }
    public void setTitle(CharSequence) { ... }
    public void setView(int) { ... }
    public void setView(View) { ... }
    public void setView(View, int, int, int, int) { ... }
    private void setupButtons(ViewGroup) { ... }
    private void setupContent(ViewGroup) { ... }
    private void setupCustomContent(ViewGroup) { ... }
    private void setupTitle(ViewGroup) { ... }
    private void setupView() { ... }
    private static boolean shouldCenterSingleButton(Context) { ... }

} 

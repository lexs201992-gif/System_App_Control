.class public Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# instance fields
.field public final handler:Landroid/os/Handler;

.field public mNotificationButtom:Landroid/widget/TextView;

.field public mNotificationButton:Landroid/widget/Button;

.field public mNotificationCenter:Landroid/widget/TextView;

.field public mNotificationIn:Landroid/widget/LinearLayout;

.field public mNotificationOut:Landroid/widget/LinearLayout;

.field public mSetupwizardCancel:Landroid/widget/ImageButton;

.field public mSwipeHintView:Lcom/android/keyguard/taboola/SwipeHintView;

.field public mTaboolaSetupwizard:Landroid/widget/RelativeLayout;

.field public myGestureDetector:Landroid/view/GestureDetector;

.field public runnable:Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x280000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0d02bf

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x7f060494

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    const p1, 0x7f0a0684

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationIn:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0685

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationOut:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0680

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationButtom:Landroid/widget/TextView;

    const p1, 0x7f0a0682

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mSetupwizardCancel:Landroid/widget/ImageButton;

    const p1, 0x7f0a0683

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationCenter:Landroid/widget/TextView;

    const p1, 0x7f0a0681

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationButton:Landroid/widget/Button;

    const p1, 0x7f0a074d

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mTaboolaSetupwizard:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0738

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/taboola/SwipeHintView;

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mSwipeHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance p1, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$myGestureListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$myGestureListener;-><init>(Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;)V

    invoke-direct {p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->myGestureDetector:Landroid/view/GestureDetector;

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mTaboolaSetupwizard:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$1;-><init>(Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mTaboolaSetupwizard:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "wallpaperDrawable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaboolaSetupWizardActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mSetupwizardCancel:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$2;-><init>(Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$3;-><init>(Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationIn:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->mNotificationButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    new-instance p1, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$4;-><init>(Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;)V

    iput-object p1, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->runnable:Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$4;

    iget-object p0, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/taboola/TaboolaSetupWizardActivity;->runnable:Lcom/android/systemui/taboola/TaboolaSetupWizardActivity$4;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

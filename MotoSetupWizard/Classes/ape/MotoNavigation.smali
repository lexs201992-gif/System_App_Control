.class public Lcom/ape/setupwizard/activity/MotoNavigation;
.super Landroid/app/Activity;
.source "MotoNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;
    }
.end annotation


# instance fields
.field private UIHandle:Landroid/os/Handler;

.field private content1:Landroid/widget/TextView;

.field private content2:Landroid/widget/TextView;

.field private logoView:Landroid/widget/ImageView;

.field private mBackground:Landroid/view/View;

.field private mButton3:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mGestures:Landroid/widget/TextView;

.field private mStatus:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private om:Landroid/content/om/OverlayManager;

.field resIds:[I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    const v0, 0x7f100003

    const v1, 0x7f100004

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->resIds:[I

    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$1;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->UIHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/om/OverlayManager;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->om:Landroid/content/om/OverlayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoNavigation;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ape/setupwizard/activity/MotoNavigation;->stateChange(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ape/setupwizard/activity/MotoNavigation;)I
    .locals 0

    iget p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    return p0
.end method

.method static synthetic access$502(Lcom/ape/setupwizard/activity/MotoNavigation;I)I
    .locals 0

    iput p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ape/setupwizard/activity/MotoNavigation;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->UIHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ape/setupwizard/activity/MotoNavigation;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoNavigation;->loadNext()V

    return-void
.end method

.method private initView(I)V
    .locals 4

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->logoView:Landroid/widget/ImageView;

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->title:Landroid/widget/TextView;

    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content1:Landroid/widget/TextView;

    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mBackground:Landroid/view/View;

    const v0, 0x7f0800be

    const v1, 0x7f080109

    const v2, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean v3, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->title:Landroid/widget/TextView;

    const v1, 0x7f06030d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    const v1, 0x7f06030b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean v3, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->logoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mBackground:Landroid/view/View;

    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    const v1, 0x7f090113

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    invoke-virtual {v0, p1}, Lcom/ape/setupwizard/activity/MotoNavigation$MyAdapter;->changeTheme(I)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    const p1, 0x7f090071

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    const p1, 0x7f0900f8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$2;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$3;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$3;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$4;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$4;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const p1, 0x7f09024b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoNavigation$5;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoNavigation$5;-><init>(Lcom/ape/setupwizard/activity/MotoNavigation;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadNext()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private stateChange(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const v1, 0x7f0800f0

    const v2, 0x7f0800f1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v4, p2, :cond_3

    :try_start_0
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    goto :goto_0

    :cond_3
    const/16 v4, 0xb

    if-ne v4, p2, :cond_4

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mGestures:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mButton3:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->content2:Landroid/widget/TextView;

    const v0, 0x7f11008f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v4, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    invoke-static {p1, p2}, Lcom/ape/setupwizard/utils/SPUtils;->setNavagation(Landroid/content/Context;I)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v3, p1, Landroid/os/Message;->what:I

    iget p2, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mStatus:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->UIHandle:Landroid/os/Handler;

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getTheme(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1204f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f1204f4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_3

    const v1, 0x7f1204f2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f1204f5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    :goto_2
    const v1, 0x7f0c0054

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->initView(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getNavagation(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ape/setupwizard/activity/MotoNavigation;->stateChange(ZI)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/om/OverlayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/om/OverlayManager;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->om:Landroid/content/om/OverlayManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->UIHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoNavigation;->UIHandle:Landroid/os/Handler;

    :cond_0
    return-void
.end method

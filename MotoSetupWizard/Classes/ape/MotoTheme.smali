.class public Lcom/ape/setupwizard/activity/MotoTheme;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MotoTheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;
    }
.end annotation


# instance fields
.field private UIHandle:Landroid/os/Handler;

.field private content1:Landroid/widget/TextView;

.field private content2:Landroid/widget/TextView;

.field private logoView:Landroid/widget/ImageView;

.field private mBackground:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDark:Landroid/widget/TextView;

.field private mLight:Landroid/widget/TextView;

.field private mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

.field private mStatus:I

.field private mUiModeManager:Landroid/app/UiModeManager;

.field private mViewPager:Lcom/ape/setupwizard/utils/ScrollableViewPager;

.field resIds:[I

.field resIds_dark:[I

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mStatus:I

    const v0, 0x7f0800db

    const v1, 0x7f0800c5

    const v2, 0x7f0800c6

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->resIds:[I

    const v0, 0x7f0800dc

    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->resIds_dark:[I

    new-instance v0, Lcom/ape/setupwizard/activity/MotoTheme$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoTheme$1;-><init>(Lcom/ape/setupwizard/activity/MotoTheme;)V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->UIHandle:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/app/UiModeManager;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mUiModeManager:Landroid/app/UiModeManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/MotoTheme;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->changeUI(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ape/setupwizard/activity/MotoTheme;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ape/setupwizard/activity/MotoTheme;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ape/setupwizard/activity/MotoTheme;->changeTheme(ZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/ape/setupwizard/activity/MotoTheme;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoTheme;->loadNext()V

    return-void
.end method

.method private changeTheme(ZI)V
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->resIds:[I

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->setItemImage([I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->resIds_dark:[I

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->setItemImage([I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mViewPager:Lcom/ape/setupwizard/utils/ScrollableViewPager;

    invoke-virtual {v0, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mStatus:I

    if-eq p2, p1, :cond_1

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Landroid/os/Message;->what:I

    iput p2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->UIHandle:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iput p2, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mStatus:I

    return-void
.end method

.method private changeUI(I)V
    .locals 6

    const v0, 0x7f060080

    const v1, 0x7f0800f0

    const v2, 0x7f060039

    const v3, 0x7f0800f1

    const v4, 0x7f0800be

    const v5, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->logoView:Landroid/widget/ImageView;

    const v4, 0x7f0800c8

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->title:Landroid/widget/TextView;

    const v0, 0x7f06030d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    const v0, 0x7f110095

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    const v0, 0x7f06030b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->logoView:Landroid/widget/ImageView;

    const v4, 0x7f0800c9

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    const v0, 0x7f110096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mBackground:Landroid/view/View;

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method

.method private initView(I)V
    .locals 1

    const p1, 0x7f090132

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->logoView:Landroid/widget/ImageView;

    new-instance p1, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    invoke-direct {p1, p0}, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;-><init>(Lcom/ape/setupwizard/activity/MotoTheme;)V

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->resIds:[I

    invoke-virtual {p1, v0}, Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;->setItemImage([I)V

    const p1, 0x7f090113

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/utils/ScrollableViewPager;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mViewPager:Lcom/ape/setupwizard/utils/ScrollableViewPager;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mMyAdapter:Lcom/ape/setupwizard/activity/MotoTheme$MyAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mViewPager:Lcom/ape/setupwizard/utils/ScrollableViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const p1, 0x7f090126

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    const p1, 0x7f0900a3

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mLight:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoTheme$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoTheme$2;-><init>(Lcom/ape/setupwizard/activity/MotoTheme;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mDark:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoTheme$3;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoTheme$3;-><init>(Lcom/ape/setupwizard/activity/MotoTheme;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09024b

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoTheme$4;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoTheme$4;-><init>(Lcom/ape/setupwizard/activity/MotoTheme;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090275

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->title:Landroid/widget/TextView;

    const p1, 0x7f090091

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content1:Landroid/widget/TextView;

    const p1, 0x7f090092

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->content2:Landroid/widget/TextView;

    const p1, 0x7f090060

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mBackground:Landroid/view/View;

    return-void
.end method

.method private loadNext()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getTheme(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1204f1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f1204f4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

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

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f1204f5

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->initView(I)V

    invoke-direct {p0, v0, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->changeTheme(ZI)V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoTheme;->changeUI(I)V

    const-class p1, Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoTheme;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

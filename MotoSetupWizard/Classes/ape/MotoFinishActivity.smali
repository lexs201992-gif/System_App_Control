.class public Lcom/ape/setupwizard/activity/MotoFinishActivity;
.super Landroid/app/Activity;
.source "MotoFinishActivity.java"


# instance fields
.field private content1:Landroid/widget/TextView;

.field private isNotification:Z

.field private logoView:Landroid/widget/ImageView;

.field private mBackground:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->isNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoFinishActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFinishActivity;->loadNext()V

    return-void
.end method

.method private changeTheme(I)V
    .locals 3

    const v0, 0x7f0800be

    const v1, 0x7f0800c7

    const v2, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f06030d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mBackground:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->logoView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->content1:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mBackground:Landroid/view/View;

    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->logoView:Landroid/widget/ImageView;

    const v0, 0x7f090275

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->title:Landroid/widget/TextView;

    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->content1:Landroid/widget/TextView;

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/ape/setupwizard/activity/MotoFinishActivity$1;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoFinishActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoFinishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mBackground:Landroid/view/View;

    return-void
.end method

.method private loadNext()V
    .locals 5

    const-string v0, "unknown"

    :try_start_0
    const-string v1, "ro.carrier"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.sub_channel_id"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motorola_customize_pictorial_apply"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/Utils;->isSupportEmeaTaboola(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/Utils;->isSupportLatamTaboola(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "suw_onb"

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/ape/setupwizard/utils/Utils;->setValueForCheckin(Ljava/lang/String;ILandroid/content/Context;)V

    if-nez v2, :cond_1

    const-string v0, "dev_act"

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/ape/setupwizard/utils/Utils;->setValueForCheckin(Ljava/lang/String;ILandroid/content/Context;)V

    const-string v0, "sc_ls"

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/ape/setupwizard/utils/Utils;->setValueForCheckin(Ljava/lang/String;ILandroid/content/Context;)V

    :cond_1
    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->isNotification:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p0}, Lcom/ape/setupwizard/MotoApplication;->clearAllActvity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getTheme(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1204f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
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

    :cond_1
    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1204f2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_2
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
    const v1, 0x7f0c0053

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFinishActivity;->initView()V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoFinishActivity;->changeTheme(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "isNotification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoFinishActivity;->isNotification:Z

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sprd_display_color_temperature_mode"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

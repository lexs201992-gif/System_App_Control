.class public Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;
.super Landroid/app/Activity;
.source "PrivacyUpdateControlActivity.java"


# instance fields
.field private mEnhancedSwitch:Landroid/widget/Switch;

.field private mImproveSwitch:Landroid/widget/Switch;

.field private mUpdateSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mEnhancedSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Landroid/widget/Switch;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mImproveSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->loadNext()V

    return-void
.end method

.method private getErrorMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v1, 0x7f110067

    goto :goto_0

    :cond_0
    const v1, 0x7f11009c

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1100cb

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPrivacyandExperiencesSwitchValues()V
    .locals 8

    invoke-static {p0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mImproveSwitch:Landroid/widget/Switch;

    const-string v2, "kr"

    const-string v3, "kp"

    const-string v4, "privacy_support_device"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v4, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v7, "privacy_help_improve_products"

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    iget-object v7, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mImproveSwitch:Landroid/widget/Switch;

    if-ne v1, v6, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    move v1, v5

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mEnhancedSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v6}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_4
    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mEnhancedSwitch:Landroid/widget/Switch;

    if-ne v0, v6, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method private initView()V
    .locals 4

    const v0, 0x7f090115

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mImproveSwitch:Landroid/widget/Switch;

    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mEnhancedSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;-><init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V

    new-instance v1, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$2;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$2;-><init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V

    iget-object v2, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mImproveSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mEnhancedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090289

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mUpdateSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;-><init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;-><init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090132

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-boolean v3, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0800be

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1100e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f110126

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ape/setupwizard/utils/Utils;->isRetjio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09018b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;-><init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private loadNext()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.ota.smart.update.USER_OPTIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->mUpdateSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "smartupdateOptin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.ota.Permissions.INTERACT_OTA_SERVICE"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setPrivacyAccept(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string v0, "PrivacyUpdateControlActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1204f1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1204f4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    const p1, 0x7f0c007b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->initView()V

    invoke-static {p0, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setPrivacyAccept(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->initPrivacyandExperiencesSwitchValues()V

    return-void
.end method

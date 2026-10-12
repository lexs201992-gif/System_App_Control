.class public Lcom/ape/setupwizard/activity/ApnSettingWrapper;
.super Landroid/app/Activity;
.source "ApnSettingWrapper.java"


# instance fields
.field private DEBUG:Z

.field private isBackFromApn:Z

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    return-void
.end method

.method private loadNext(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->mContext:Landroid/content/Context;

    const-string p1, "ro.compile.product"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SysProp;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnSettingWrapper product = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApnSettingWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "hawaiipl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->loadNext(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 10

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    invoke-direct {p0, v1}, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->loadNext(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    iget-boolean v4, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->DEBUG:Z

    const-string v5, "ApnSettingWrapper"

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnSettingWrapper defaultSub = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ApnSettingWrapper mccmnc = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v0, :cond_6

    sget-object v4, Lcom/ape/setupwizard/utils/MultiSimUtils;->JAPAN_MCC_TABLE:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v6, v5, :cond_4

    aget-object v9, v4, v6

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v7, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    iput-boolean v8, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "setupwizard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sub_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    invoke-direct {p0, v1}, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->loadNext(I)V

    goto :goto_1

    :cond_6
    iput-boolean v2, p0, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->isBackFromApn:Z

    invoke-direct {p0, v1}, Lcom/ape/setupwizard/activity/ApnSettingWrapper;->loadNext(I)V

    :goto_1
    return-void
.end method

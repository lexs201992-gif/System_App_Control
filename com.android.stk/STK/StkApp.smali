.class public Lcom/android/stk/StkApp;
.super Landroid/app/Application;
.source "StkApp.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimCount:I

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkApp;->mSimCount:I

    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I
    .locals 2

    if-eqz p0, :cond_2

    sget-object v0, Lcom/android/stk/StkApp$1;->$SwitchMap$com$android$internal$telephony$cat$Duration$TimeUnit:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const v0, 0xea60

    :goto_0
    iget p0, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    mul-int/2addr v0, p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private hasIccCard()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkApp;->mSimCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/stk/StkApp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "STK App"

    const-string v1, " onCreate"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/stk/StkApp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkApp;->mSimCount:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/stk/StkApp;->mSimCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/stk/StkApp;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->installOrUpdate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/stk/StkApp;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    :cond_2
    :goto_1
    return-void
.end method

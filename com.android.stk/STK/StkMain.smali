.class public Lcom/android/stk/StkMain;
.super Landroid/app/Activity;
.source "StkMain.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSimLockConfig:Z

.field private mSingleSimId:I

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private isShowSTKListMenu()Z
    .locals 10

    iget-object v0, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StkMain"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v0, :cond_4

    if-nez v1, :cond_0

    const-string v1, "appService is null and fetch again."

    invoke-static {v3, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v1

    :cond_0
    iget-boolean v7, p0, Lcom/android/stk/StkMain;->mSimLockConfig:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    iget-object v7, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    const-string v9, "SIM "

    if-eq v7, v8, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v6

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is inserted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is not inserted."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-le v5, v6, :cond_5

    return v6

    :cond_5
    const-string p0, "do not show stk list menu."

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private launchSTKMainMenu(I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "StkMain"

    const-string v2, "launchSTKMainMenu."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkAppService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private showTextToast(Landroid/content/Context;I)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x50

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "StkMain"

    const-string v0, "onCreate+"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkMain;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/stk/StkMain;->mSimLockConfig:Z

    invoke-direct {p0}, Lcom/android/stk/StkMain;->isShowSTKListMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.stk"

    const-string v1, "com.android.stk.StkLauncherActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    const v0, 0x7f0e0095

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkMain;->showTextToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/stk/StkMain;->mSimLockConfig:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkMain;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/stk/StkMain;->mContext:Landroid/content/Context;

    const v0, 0x7f0e009c

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkMain;->showTextToast(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget p1, p0, Lcom/android/stk/StkMain;->mSingleSimId:I

    invoke-direct {p0, p1}, Lcom/android/stk/StkMain;->launchSTKMainMenu(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

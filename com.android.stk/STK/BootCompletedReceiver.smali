.class public Lcom/android/stk/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMenuName(Landroid/content/Context;Lcom/android/stk/StkAppService;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    if-ge v1, p0, :cond_6

    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1, v1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v5, "BootCompletedReceiver"

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " BootCompletedReceiver getMainMenu: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f040004

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e0020

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " BootCompletedReceiver menuName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0e001d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v4, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    return-object v2
.end method

.method private needShowDoubleApp(Landroid/content/Context;IILcom/android/stk/StkAppService;)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1, p2}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    invoke-virtual {p4, p2}, Lcom/android/stk/StkAppService;->setPreciseCallStateListener(I)V

    invoke-virtual {p4, p2}, Lcom/android/stk/StkAppService;->tryRegisterIms(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-eq p0, p3, :cond_1

    const/4 p0, 0x6

    if-ne p0, p3, :cond_2

    :cond_1
    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startServiceByBootCompleted(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "op"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkAppService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string p0, "BootCompletedReceiver"

    const-string p1, "start StkAppService fail"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BootCompletedReceiver"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/stk/BootCompletedReceiver;->startServiceByBootCompleted(Landroid/content/Context;)V

    :cond_1
    const-string p0, "[ACTION_BOOT_COMPLETED]"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.intent.action.USER_INITIALIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->isSystem()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void

    :cond_3
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_4
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    const-string v1, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and simState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    const-string v0, "appService is null..."

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne v0, p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/stk/BootCompletedReceiver;->startServiceByBootCompleted(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->setPreciseCallStateListener(I)V

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->tryRegisterIms(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result v4

    invoke-virtual {v0}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isShowDoubleApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " and isAirPlaneModeOn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_e

    if-eqz v5, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v4, :cond_8

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/android/stk/BootCompletedReceiver;->needShowDoubleApp(Landroid/content/Context;IILcom/android/stk/StkAppService;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, v0}, Lcom/android/stk/BootCompletedReceiver;->getMenuName(Landroid/content/Context;Lcom/android/stk/StkAppService;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    if-eq p2, v4, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {v0, p1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v3, :cond_a

    goto :goto_0

    :cond_a
    if-eq v4, p2, :cond_b

    const/4 p0, 0x6

    if-ne p0, p2, :cond_e

    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f040004

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0e0020

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/stk/StkAppInstaller;->installOrUpdate(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    invoke-static {p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto :goto_1

    :cond_d
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->setPreciseCallStateListener(I)V

    invoke-virtual {v0, v1}, Lcom/android/stk/StkAppService;->tryRegisterIms(I)V

    invoke-static {p1, p0}, Lcom/android/stk/StkAppInstaller;->installOrUpdate(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    :goto_1
    return-void
.end method

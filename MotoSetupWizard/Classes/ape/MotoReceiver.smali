.class public Lcom/ape/setupwizard/MotoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotoReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getStay(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/ape/setupwizard/MotoReceiver;->openService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public openService(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/ape/setupwizard/MotoService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

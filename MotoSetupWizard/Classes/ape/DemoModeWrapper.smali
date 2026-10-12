.class public Lcom/ape/setupwizard/demomode/DemoModeWrapper;
.super Landroid/app/Activity;
.source "DemoModeWrapper.java"


# static fields
.field private static enableDemoMode:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isDemoModeEnabled()Z
    .locals 1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_0

    const-string v0, "com.motorola.demo"

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadNext(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private shouldEnableDemoMode()Z
    .locals 2

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object p0

    const-string v0, "demogb"

    const-string v1, "retdemo"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->isDemoModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x78

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->loadNext(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->shouldEnableDemoMode()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.motorola.demo"

    const-string v1, "com.motorola.demo.ui.admin.DemoModeActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "skipUserSetup"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "skipEducationalScreen"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "enableDemoModeAutomatically"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sput-boolean v1, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->enableDemoMode:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->loadNext(I)V

    :goto_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->isDemoModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->enableDemoMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x79

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->loadNext(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->loadNext(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/demomode/DemoModeWrapper;->loadNext(I)V

    :goto_0
    return-void
.end method

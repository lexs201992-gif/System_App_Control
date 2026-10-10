.class public Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;
.super Ljava/lang/Object;
.source "VirtualizationFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/system/virtualmachine/VirtualMachineManager;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.virtualization_framework"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/system/virtualmachine/VirtualMachineManager;

    invoke-direct {v0, p0}, Landroid/system/virtualmachine/VirtualMachineManager;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .locals 3

    const-class v0, Landroid/system/virtualmachine/VirtualMachineManager;

    new-instance v1, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "virtualization"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    return-void
.end method

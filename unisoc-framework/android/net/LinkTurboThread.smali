.class public final Landroid/net/LinkTurboThread;
.super Landroid/os/HandlerThread;
.source "LinkTurboThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkTurboThread$Singleton;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateInstance()Landroid/net/LinkTurboThread;
    .locals 1

    invoke-static {}, Landroid/net/LinkTurboThread;->createInstance()Landroid/net/LinkTurboThread;

    move-result-object v0

    return-object v0
.end method

.method private constructor blacklist <init>()V
    .locals 1

    const-string v0, "LinkTurboThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist createInstance()Landroid/net/LinkTurboThread;
    .locals 1

    new-instance v0, Landroid/net/LinkTurboThread;

    invoke-direct {v0}, Landroid/net/LinkTurboThread;-><init>()V

    invoke-virtual {v0}, Landroid/net/LinkTurboThread;->start()V

    return-object v0
.end method

.method public static blacklist get()Landroid/net/LinkTurboThread;
    .locals 1

    invoke-static {}, Landroid/net/LinkTurboThread$Singleton;->-$$Nest$sfgetINSTANCE()Landroid/net/LinkTurboThread;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstanceLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/net/LinkTurboThread$Singleton;->-$$Nest$sfgetINSTANCE()Landroid/net/LinkTurboThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkTurboThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

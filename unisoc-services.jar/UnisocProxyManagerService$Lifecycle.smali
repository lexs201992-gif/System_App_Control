.class public final Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UnisocProxyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/proxy/UnisocProxyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/unipnp/server/proxy/UnisocProxyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-direct {v0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;->mService:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    return-void
.end method


# virtual methods
.method public getUnisocProxyManagerService()Lcom/unipnp/server/proxy/UnisocProxyManagerService;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;->mService:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "unisoc_proxy"

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;->mService:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

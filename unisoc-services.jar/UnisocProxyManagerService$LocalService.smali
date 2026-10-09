.class public final Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;
.super Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;
.source "UnisocProxyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/proxy/UnisocProxyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;


# direct methods
.method public constructor <init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-direct {p0}, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public clearProcessProxy(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearProcessProxy(Ljava/lang/String;II)V

    return-void
.end method

.method public getMaxProxyBrCount()I
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->getMaxProxyBrCount()I

    move-result v0

    return v0
.end method

.method public isBroardcastProxy(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->isBroardcastProxy(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyFeatureXmllLoaded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-static {v0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->-$$Nest$mnotifyFeatureXmllLoaded(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V

    return-void
.end method

.method public setBroadcastProxy(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;->this$0:Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setBroadcastProxy(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

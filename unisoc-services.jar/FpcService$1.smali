.class Lcom/fingerprints/extension/FpcService$1;
.super Lcom/fingerprints/fpc/extension/IFpcExtensionCallback$Stub;
.source "FpcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/extension/FpcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/extension/FpcService;


# direct methods
.method constructor <init>(Lcom/fingerprints/extension/FpcService;)V
    .locals 0

    iput-object p1, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-direct {p0}, Lcom/fingerprints/fpc/extension/IFpcExtensionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-static {v0}, Lcom/fingerprints/extension/FpcService;->access$000(Lcom/fingerprints/extension/FpcService;)Lcom/fingerprints/extension/util/Logger;

    move-result-object v0

    const-string v1, "getInterfaceHash"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-static {v0}, Lcom/fingerprints/extension/FpcService;->access$000(Lcom/fingerprints/extension/FpcService;)Lcom/fingerprints/extension/util/Logger;

    move-result-object v0

    const-string v1, "getInterfaceVersion"

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onRequestCallback(I[B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-static {v0}, Lcom/fingerprints/extension/FpcService;->access$000(Lcom/fingerprints/extension/FpcService;)Lcom/fingerprints/extension/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback request id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingerprints/extension/util/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-static {v0}, Lcom/fingerprints/extension/FpcService;->access$100(Lcom/fingerprints/extension/FpcService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fingerprints/extension/FpcService$1;->this$0:Lcom/fingerprints/extension/FpcService;

    invoke-static {v2}, Lcom/fingerprints/extension/FpcService;->access$100(Lcom/fingerprints/extension/FpcService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fingerprints/extension/IFpcServiceCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, p2, p3}, Lcom/fingerprints/extension/IFpcServiceCallback;->onServiceCallback(I[B[B)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

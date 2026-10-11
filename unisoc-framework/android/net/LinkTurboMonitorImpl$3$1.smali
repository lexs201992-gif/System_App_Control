.class Landroid/net/LinkTurboMonitorImpl$3$1;
.super Landroid/net/LinkTurboManager$LinkTurboCallback;
.source "LinkTurboMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/LinkTurboMonitorImpl$3;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl$3;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    invoke-direct {p0}, Landroid/net/LinkTurboManager$LinkTurboCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBindProcessToNetwork(Landroid/net/Network;)V
    .locals 5

    const-string v0, "onBindProcessToNetwork"

    const-string v1, "SmartLinkMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v0, v0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmNetd(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;

    move-result-object v0

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v2, v2, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    invoke-interface {v0, v2, p1}, Landroid/net/INetworkAdapterService;->bindAppUidToNetwork(ILandroid/net/Network;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v2, v2, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-virtual {v2}, Landroid/net/LinkTurboMonitorImpl;->processAfterBindSuccess()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BindProcessToNetwork finished, result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process pid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v4, v4, Landroid/net/LinkTurboMonitorImpl$3;->val$pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], uid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v4, v4, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has been binded to netId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], send notification to LinkTurbo Service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v3, v3, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v3}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v4, v4, Landroid/net/LinkTurboMonitorImpl$3;->val$pid:I

    invoke-virtual {v3, v2, v4}, Landroid/net/LinkTurboManager;->onBindedNetworkFinished(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public blacklist onClearBindingRequest()V
    .locals 5

    const-string v0, "onClearBindingRequest"

    const-string v1, "SmartLinkMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v0, v0, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v0}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmNetd(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;

    move-result-object v0

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v2, v2, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/net/INetworkAdapterService;->bindAppUidToNetwork(ILandroid/net/Network;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v2, v2, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-virtual {v2}, Landroid/net/LinkTurboMonitorImpl;->processAfterBindSuccess()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClearBindingRequest finished, result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$3;->val$pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], uid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$3;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] has been binded to null, send notification to LinkTurbo Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget-object v2, v2, Landroid/net/LinkTurboMonitorImpl$3;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v2}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$3$1;->this$1:Landroid/net/LinkTurboMonitorImpl$3;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$3;->val$pid:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/net/LinkTurboManager;->onBindedNetworkFinished(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

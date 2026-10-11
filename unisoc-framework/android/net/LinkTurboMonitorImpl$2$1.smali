.class Landroid/net/LinkTurboMonitorImpl$2$1;
.super Landroid/net/LinkTurboManager$LinkTurboCallback;
.source "LinkTurboMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboMonitorImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/net/LinkTurboMonitorImpl$2;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboMonitorImpl$2;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    invoke-direct {p0}, Landroid/net/LinkTurboManager$LinkTurboCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onBindProcessToNetwork(Landroid/net/Network;)V
    .locals 5

    const-string v0, " onBindProcessToNetwork"

    const-string v1, "SmartLink2.0:LinkTurboMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v0, v0, Landroid/net/LinkTurboMonitorImpl$2;->val$mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

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

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v2, v2, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-virtual {v2}, Landroid/net/LinkTurboMonitorImpl;->processAfterBindSuccess()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------bind Process To Network finished, result is ----------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v4, v4, Landroid/net/LinkTurboMonitorImpl$2;->val$pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "],uid ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v4, v4, Landroid/net/LinkTurboMonitorImpl$2;->val$uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] has been binded to  netId["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ,send notification to LinkTurbo Service"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v1, v1, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v1

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$2;->val$pid:I

    invoke-virtual {v1, v2, v3}, Landroid/net/LinkTurboManager;->onBindedNetworkFinished(II)V

    :cond_1
    return-void
.end method

.method public blacklist onClearBindingRequest()V
    .locals 4

    const-string v0, " onClearBindingRequest"

    const-string v1, "SmartLink2.0:LinkTurboMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v0, v0, Landroid/net/LinkTurboMonitorImpl$2;->val$mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

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

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v2, v2, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-virtual {v2}, Landroid/net/LinkTurboMonitorImpl;->processAfterBindSuccess()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------------bind Process To null finished, result is ----------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$2;->val$pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],uid ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v3, v3, Landroid/net/LinkTurboMonitorImpl$2;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] has been binded to  null ,send notification to LinkTurbo Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget-object v1, v1, Landroid/net/LinkTurboMonitorImpl$2;->this$0:Landroid/net/LinkTurboMonitorImpl;

    invoke-static {v1}, Landroid/net/LinkTurboMonitorImpl;->-$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;

    move-result-object v1

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl$2$1;->this$1:Landroid/net/LinkTurboMonitorImpl$2;

    iget v2, v2, Landroid/net/LinkTurboMonitorImpl$2;->val$pid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/net/LinkTurboManager;->onBindedNetworkFinished(II)V

    :cond_1
    return-void
.end method

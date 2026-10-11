.class Landroid/net/LinkTurboManagerImpl$1;
.super Ljava/lang/Object;
.source "LinkTurboManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkTurboManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/LinkTurboManagerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/net/LinkTurboManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Linkturbo service is connected already, bind service name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartLink2.0:LinkTurboManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    invoke-static {p2}, Landroid/net/ILinkTurboManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ILinkTurboManager;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$fputmService(Landroid/net/LinkTurboManagerImpl;Landroid/net/ILinkTurboManager;)V

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    invoke-static {v0}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$fgetmService(Landroid/net/LinkTurboManagerImpl;)Landroid/net/ILinkTurboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$sfgetmLinkTurboCallback()Landroid/net/LinkTurboManager$LinkTurboCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$sfgetmPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "start register mLinkTurboCallback & mPackageName"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    invoke-static {}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$sfgetmLinkTurboCallback()Landroid/net/LinkTurboManager$LinkTurboCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    invoke-static {v2}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$mgetDefaultHandler(Landroid/net/LinkTurboManagerImpl;)Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    move-result-object v2

    invoke-static {}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$sfgetmPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/LinkTurboManagerImpl;->registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Landroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "mService or mLinkTurboCallback or mPackageName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v1, "Linkturbo service is disconnected already"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl$1;->this$0:Landroid/net/LinkTurboManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/LinkTurboManagerImpl;->-$$Nest$fputmService(Landroid/net/LinkTurboManagerImpl;Landroid/net/ILinkTurboManager;)V

    return-void
.end method

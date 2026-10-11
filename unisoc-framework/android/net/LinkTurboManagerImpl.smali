.class public Landroid/net/LinkTurboManagerImpl;
.super Landroid/net/LinkTurboManager;
.source "LinkTurboManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/LinkTurboManagerImpl$CallbackHandler;
    }
.end annotation


# static fields
.field private static final blacklist ALREADY_UNREGISTERED:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "SmartLink2.0:LinkTurboManagerImpl"

.field private static blacklist mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

.field private static blacklist mPackageName:Ljava/lang/String;

.field private static blacklist sCallbackHandler:Landroid/net/LinkTurboManagerImpl$CallbackHandler;

.field private static final blacklist sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/LinkTurboManager$LinkTurboCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile blacklist isMpHttpRegistered:Z

.field private blacklist mConn:Landroid/content/ServiceConnection;

.field private final blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mService:Landroid/net/ILinkTurboManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/net/LinkTurboManagerImpl;)Landroid/net/ILinkTurboManager;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/net/LinkTurboManagerImpl;Landroid/net/ILinkTurboManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDefaultHandler(Landroid/net/LinkTurboManagerImpl;)Landroid/net/LinkTurboManagerImpl$CallbackHandler;
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboManagerImpl;->getDefaultHandler()Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLinkTurboCallback()Landroid/net/LinkTurboManager$LinkTurboCallback;
    .locals 1

    sget-object v0, Landroid/net/LinkTurboManagerImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmPackageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/LinkTurboManagerImpl;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsCallbacks()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/net/LinkTurboManagerImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    sput-object v0, Landroid/net/LinkTurboManagerImpl;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/net/LinkTurboManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mConn:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/LinkTurboManagerImpl;->isMpHttpRegistered:Z

    const-string v0, "LinkTurboManagerImpl one args"

    const-string v1, "SmartLink2.0:LinkTurboManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/LinkTurboManagerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/LinkTurboManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/net/LinkTurboManagerImpl$1;-><init>(Landroid/net/LinkTurboManagerImpl;)V

    iput-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mConn:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sprd.linkturbo.ACTION_AIDL_SERVICE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sprd.linkturbo"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "bindService Linkturbo service --com.sprd.linkturbo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboManagerImpl;->mConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static blacklist checkCallbackNotNull(Landroid/net/LinkTurboManager$LinkTurboCallback;)V
    .locals 1

    const-string v0, "null NetworkCallback"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist getDefaultHandler()Landroid/net/LinkTurboManagerImpl$CallbackHandler;
    .locals 3

    sget-object v0, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/LinkTurboManagerImpl;->sCallbackHandler:Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    invoke-static {}, Landroid/net/LinkTurboThread;->getInstanceLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/LinkTurboManagerImpl$CallbackHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/net/LinkTurboManagerImpl;->sCallbackHandler:Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    :cond_0
    sget-object v1, Landroid/net/LinkTurboManagerImpl;->sCallbackHandler:Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist sendRequestForNetwork(Landroid/net/LinkTurboManager$LinkTurboCallback;Landroid/net/LinkTurboManagerImpl$CallbackHandler;Ljava/lang/String;)I
    .locals 7

    const-string v0, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v1, "sendRequestForNetwork "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/LinkTurboManagerImpl;->checkCallbackNotNull(Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    :try_start_1
    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestForNetwork callback.networkRequestId  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    if-lez v2, :cond_0

    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v3, "LinkTurboCallback was already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iget-object v4, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    invoke-interface {v4, v2, v3, p3}, Landroid/net/ILinkTurboManager;->registerLinkTurboCallback(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const-string v4, "SmartLink2.0:LinkTurboManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mService.registerLinkTurboCallback : requestId  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput v0, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    :cond_2
    monitor-exit v1

    nop

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "some error occurred "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 2

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v1, "unbind to SmartLinkService now"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/LinkTurboManagerImpl;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public blacklist getNetwork(Ljava/lang/String;)Landroid/net/Network;
    .locals 6

    const-string v0, "SmartLink2.0:LinkTurboManagerImpl"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-eqz v3, :cond_0

    const-string v3, "getNetwork mService is not null!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    invoke-interface {v3, p1}, Landroid/net/ILinkTurboManager;->getNetwork(Ljava/lang/String;)Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    const-string v3, "getNetwork after sleep 1 seconds, mService is still null!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    iget-object v3, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    invoke-interface {v3, p1}, Landroid/net/ILinkTurboManager;->getNetwork(Ljava/lang/String;)Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    nop

    return-object v0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "some error occurred: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist onBindedNetworkFinished(II)V
    .locals 2

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    invoke-interface {v0, p1, p2}, Landroid/net/ILinkTurboManager;->onBindedNetworkFinished(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mService.onBindedNetworkChanged : netId  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartLink2.0:LinkTurboManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist registerMpHttpNetworkCallback(Landroid/net/LinkTurboManager$MpHttpCallback;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "registerMpHttpNetworkCallback "

    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryNum:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mService is not null!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/LinkTurboManagerImpl;->getDefaultHandler()Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/LinkTurboManagerImpl;->registerMpHttpNetworkCallback(Landroid/net/LinkTurboManager$MpHttpCallback;Landroid/os/Handler;)V

    return-void

    :cond_0
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after sleep 1 seconds for tryNum:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mService is still null!!!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error occurred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/net/LinkTurboManagerImpl;->getDefaultHandler()Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/net/LinkTurboManagerImpl;->registerMpHttpNetworkCallback(Landroid/net/LinkTurboManager$MpHttpCallback;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method public blacklist registerMpHttpNetworkCallback(Landroid/net/LinkTurboManager$MpHttpCallback;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    invoke-direct {v0, p2}, Landroid/net/LinkTurboManagerImpl$CallbackHandler;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    return-void
.end method

.method public blacklist registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    invoke-direct {v0, p2}, Landroid/net/LinkTurboManagerImpl$CallbackHandler;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/net/LinkTurboManagerImpl;->sendRequestForNetwork(Landroid/net/LinkTurboManager$LinkTurboCallback;Landroid/net/LinkTurboManagerImpl$CallbackHandler;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Ljava/lang/String;)V
    .locals 2

    const-string v0, "registerNetworkCallback "

    const-string v1, "SmartLink2.0:LinkTurboManagerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-nez v0, :cond_0

    const-string v0, "Due to mService is null, storing mLinkTurboCallback & mPackageName "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Landroid/net/LinkTurboManagerImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    sput-object p2, Landroid/net/LinkTurboManagerImpl;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Due to mService is not null, calling registerNetworkCallback function"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/LinkTurboManagerImpl;->getDefaultHandler()Landroid/net/LinkTurboManagerImpl$CallbackHandler;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/net/LinkTurboManagerImpl;->registerNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;Landroid/os/Handler;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist unregisterMpHttpNetworkCallback(Landroid/net/LinkTurboManager$MpHttpCallback;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v1, "unregisterMpHttpNetworkCallback MpHttpCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public blacklist unregisterNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;)V
    .locals 7

    invoke-static {p1}, Landroid/net/LinkTurboManagerImpl;->checkCallbackNotNull(Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget v2, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    if-eqz v2, :cond_5

    iget v2, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    if-nez v2, :cond_1

    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v3, "mService is null, can not unregisterNetworkCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Landroid/net/LinkTurboManagerImpl;->mService:Landroid/net/ILinkTurboManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/net/ILinkTurboManager;->unregisterLinkTurboCallback(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    sget-object v5, Landroid/net/LinkTurboManagerImpl;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_4
    iput v3, p1, Landroid/net/LinkTurboManager$LinkTurboCallback;->networkRequestId:I

    monitor-exit v1

    return-void

    :cond_5
    :goto_2
    const-string v2, "SmartLink2.0:LinkTurboManagerImpl"

    const-string v3, "linkTurboCallback was not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsT;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;
.source "ShimUtilsT.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V
    .locals 4

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    const-string v2, "IkeConnectionController"

    const-string v3, "Unexpected exception"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    :goto_0
    return-void
.end method

.method public blacklist getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;
    .locals 1

    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 1

    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;

    invoke-direct {v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeTimeoutException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getWrappedIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;
    .locals 2

    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeException;

    return-object v0

    :cond_0
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeIOException;

    move-object v1, p1

    check-cast v1, Ljava/io/IOException;

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/IkeIOException;-><init>(Ljava/io/IOException;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    invoke-direct {v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeInternalException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public blacklist onUnderlyingNetworkDiedWithoutMobility(Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;Landroid/net/Network;)V
    .locals 1

    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    invoke-direct {v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    invoke-interface {p1, v0}, Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;->onFatalError(Ljava/lang/Exception;)V

    return-void
.end method

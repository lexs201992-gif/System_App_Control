.class public Lcom/android/internal/net/ipsec/ike/shim/ShimUtilsRAndS;
.super Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;
.source "ShimUtilsRAndS.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public blacklist getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getRetransmissionFailedException(Ljava/lang/String;)Ljava/lang/Exception;
    .locals 1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getWrappedIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;
    .locals 1

    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/exceptions/IkeException;

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    invoke-direct {v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeInternalException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public blacklist onUnderlyingNetworkDiedWithoutMobility(Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;Landroid/net/Network;)V
    .locals 1

    new-instance v0, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;

    invoke-direct {v0, p2}, Landroid/net/ipsec/ike/exceptions/IkeNetworkLostException;-><init>(Landroid/net/Network;)V

    invoke-interface {p1, v0}, Lcom/android/internal/net/ipsec/ike/shim/IIkeSessionStateMachineShim;->onNonFatalError(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist shouldSkipIfSameNetwork(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startKeepalive(Landroid/net/SocketKeepalive;IILandroid/net/Network;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/net/SocketKeepalive;->start(I)V

    return-void
.end method

.method public blacklist supportsSameSocketKernelMigration(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist suspendOnNetworkLossEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;
.super Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;
.source "DaemonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    invoke-direct {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onAcquired(JI)V

    :cond_0
    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object v1, v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p5}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArray(Ljava/util/ArrayList;)[B

    move-result-object v7

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    move-object v2, p0

    check-cast v2, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onAuthenticated(JII[B)V

    :cond_0
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 6

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onEnrollResult(JIII)V

    :cond_0
    return-void
.end method

.method public onError(JI)V
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onError(JI)V

    :cond_0
    return-void
.end method

.method public onRemoved(JII)V
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onRemoved(JII)V

    :cond_0
    return-void
.end method

.method public onTestCmd(JILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object v1, v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArray(Ljava/util/ArrayList;)[B

    move-result-object p4

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;->onTestCmd(JI[B)V

    :cond_0
    return-void
.end method

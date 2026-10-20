.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;
.super Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback$Stub;
.source "DaemonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;

    invoke-direct {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDump(JILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;

    iget-object v1, v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p4}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArray(Ljava/util/ArrayList;)[B

    move-result-object p4

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;->onDump(JI[B)V

    :cond_0
    return-void
.end method

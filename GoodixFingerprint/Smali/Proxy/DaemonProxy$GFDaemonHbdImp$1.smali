.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;
.super Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback$Stub;
.source "DaemonProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;

    invoke-direct {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHbdData(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;

    iget-object v1, v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;

    invoke-virtual {v0, p5}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v7

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;

    invoke-virtual {p0, p6}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object v8

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;->onHbdData(JII[I[I)V

    :cond_0
    return-void
.end method

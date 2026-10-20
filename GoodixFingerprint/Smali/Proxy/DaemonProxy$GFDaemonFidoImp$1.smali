.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$1;
.super Ljava/lang/Object;
.source "DaemonProxy.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido$getIdListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getIdList(I)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$1;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-virtual {p0, p2}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toIntArray(Ljava/util/ArrayList;)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->access$102(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;[I)[I

    :cond_0
    return-void
.end method

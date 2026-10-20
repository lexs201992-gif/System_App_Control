.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;
.super Ljava/lang/Object;
.source "DaemonProxy.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido$invokeFidoCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->invokeFidoCommand([B[B)I
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

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-static {v0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->access$202(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;I)I

    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-static {p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->access$200(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;->this$1:Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-virtual {p0, p2}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArray(Ljava/util/ArrayList;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->access$302(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;[B)[B

    :cond_0
    return-void
.end method

.class Lcom/fingerprints/extension/engineering/FingerprintEngineering$1;
.super Ljava/lang/Object;
.source "FingerprintEngineering.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingerprints/extension/engineering/FingerprintEngineering;->onServiceCallback(I[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/extension/engineering/FingerprintEngineering;


# direct methods
.method constructor <init>(Lcom/fingerprints/extension/engineering/FingerprintEngineering;)V
    .locals 0

    iput-object p1, p0, Lcom/fingerprints/extension/engineering/FingerprintEngineering$1;->this$0:Lcom/fingerprints/extension/engineering/FingerprintEngineering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/engineering/FingerprintEngineering$1;->this$0:Lcom/fingerprints/extension/engineering/FingerprintEngineering;

    invoke-static {v0}, Lcom/fingerprints/extension/engineering/FingerprintEngineering;->access$300(Lcom/fingerprints/extension/engineering/FingerprintEngineering;)Lcom/fingerprints/extension/engineering/FingerprintEngineering$ImageInjectionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingerprints/extension/engineering/FingerprintEngineering$1;->this$0:Lcom/fingerprints/extension/engineering/FingerprintEngineering;

    invoke-static {v0}, Lcom/fingerprints/extension/engineering/FingerprintEngineering;->access$300(Lcom/fingerprints/extension/engineering/FingerprintEngineering;)Lcom/fingerprints/extension/engineering/FingerprintEngineering$ImageInjectionCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/fingerprints/extension/engineering/FingerprintEngineering$ImageInjectionCallback;->onCancel()V

    :cond_0
    return-void
.end method

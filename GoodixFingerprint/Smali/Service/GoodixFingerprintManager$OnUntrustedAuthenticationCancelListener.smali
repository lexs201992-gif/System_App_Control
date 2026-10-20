.class Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnUntrustedAuthenticationCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;


# direct methods
.method private constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->cancelUntrustedAuthentication()V

    return-void
.end method

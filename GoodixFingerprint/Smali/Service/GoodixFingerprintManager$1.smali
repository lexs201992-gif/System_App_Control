.class final Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p0, "GoodixFingerprintManager"

    const-string p1, "onServiceConnected."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$402(Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;)Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    invoke-static {}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$500()Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$500()Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    move-result-object p0

    const/16 p1, 0x7d0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;->onTestCmd(ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "GoodixFingerprintManager"

    const-string p1, "onServiceDisconnected."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$402(Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;)Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    return-void
.end method

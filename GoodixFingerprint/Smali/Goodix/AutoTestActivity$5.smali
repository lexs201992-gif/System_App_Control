.class Lcom/goodix/gftest/AutoTestActivity$5;
.super Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;
.source "AutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/gftest/AutoTestActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/AutoTestActivity;


# direct methods
.method constructor <init>(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$5;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onRemovalSucceeded(I)V
    .locals 0

    return-void
.end method

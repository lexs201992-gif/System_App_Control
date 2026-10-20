.class Lcom/goodix/gftest/HomeActivity$4;
.super Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/gftest/HomeActivity;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/HomeActivity;


# direct methods
.method constructor <init>(Lcom/goodix/gftest/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/HomeActivity$4;->this$0:Lcom/goodix/gftest/HomeActivity;

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

.class Lcom/goodix/gftest/TouchTestActivity$10;
.super Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;
.source "TouchTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/TouchTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/TouchTestActivity;


# direct methods
.method constructor <init>(Lcom/goodix/gftest/TouchTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .locals 0

    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 4

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1308(Lcom/goodix/gftest/TouchTestActivity;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1300(Lcom/goodix/gftest/TouchTestActivity;)I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$5700(Lcom/goodix/gftest/TouchTestActivity;)Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/goodix/gftest/TouchTestActivity;->access$5702(Lcom/goodix/gftest/TouchTestActivity;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0, v1, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$5300(Lcom/goodix/gftest/TouchTestActivity;II)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v0, 0x1

    invoke-static {p0, v0, v3}, Lcom/goodix/gftest/TouchTestActivity;->access$5400(Lcom/goodix/gftest/TouchTestActivity;ILjava/util/HashMap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3800(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .locals 3

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/goodix/gftest/TouchTestActivity;->access$5702(Lcom/goodix/gftest/TouchTestActivity;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/16 v1, 0x11

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$5300(Lcom/goodix/gftest/TouchTestActivity;II)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$10;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/goodix/gftest/TouchTestActivity;->access$5400(Lcom/goodix/gftest/TouchTestActivity;ILjava/util/HashMap;)V

    return-void
.end method

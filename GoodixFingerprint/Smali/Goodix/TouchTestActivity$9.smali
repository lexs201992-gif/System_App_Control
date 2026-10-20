.class Lcom/goodix/gftest/TouchTestActivity$9;
.super Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;
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

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentAcquired(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEnrollmentAcquired acquireInfo = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchTestActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEnrollmentError errMsgId = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TouchTestActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$3800(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$2000(Lcom/goodix/gftest/TouchTestActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p2}, Lcom/goodix/gftest/TouchTestActivity;->access$5500(Lcom/goodix/gftest/TouchTestActivity;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$5600(Lcom/goodix/gftest/TouchTestActivity;)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEnrollmentHelp helpMsgId = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchTestActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentProgress fingerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", remaining = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchTestActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1, p2}, Lcom/goodix/gftest/TouchTestActivity;->access$1102(Lcom/goodix/gftest/TouchTestActivity;I)I

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$3800(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p1

    iget p1, p1, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p2}, Lcom/goodix/gftest/TouchTestActivity;->access$1200(Lcom/goodix/gftest/TouchTestActivity;)I

    move-result p2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/goodix/gftest/TouchTestActivity;->access$5202(Lcom/goodix/gftest/TouchTestActivity;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    iget-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/goodix/gftest/TouchTestActivity;->access$5300(Lcom/goodix/gftest/TouchTestActivity;II)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$9;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Lcom/goodix/gftest/TouchTestActivity;->access$5400(Lcom/goodix/gftest/TouchTestActivity;ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

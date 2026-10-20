.class Lcom/goodix/gftest/AutoTestActivity$9;
.super Ljava/lang/Object;
.source "AutoTestActivity.java"

# interfaces
.implements Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/AutoTestActivity;
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

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$9;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTestCmd(ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTestCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$9;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$2300(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const-string p0, "GFManager may be wrong"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity$9;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/AutoTestActivity;->access$2000(Lcom/goodix/gftest/AutoTestActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$9$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/goodix/gftest/AutoTestActivity$9$1;-><init>(Lcom/goodix/gftest/AutoTestActivity$9;ILjava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

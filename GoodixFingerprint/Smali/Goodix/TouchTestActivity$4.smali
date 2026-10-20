.class Lcom/goodix/gftest/TouchTestActivity$4;
.super Ljava/lang/Object;
.source "TouchTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "TouchTestActivity"

    :try_start_0
    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const-string v2, "sys.goodix.switchfingertime"

    invoke-static {v1, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1400(Lcom/goodix/gftest/TouchTestActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1388

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch finger time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v3}, Lcom/goodix/gftest/TouchTestActivity;->access$1500(Lcom/goodix/gftest/TouchTestActivity;)J

    move-result-wide v3

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v5}, Lcom/goodix/gftest/TouchTestActivity;->access$1600(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f0d0157

    invoke-virtual {v6, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v3, v7, v8}, Lcom/goodix/gftest/TouchTestActivity;->access$1514(Lcom/goodix/gftest/TouchTestActivity;J)J

    iget-object v3, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const-string v4, "sys.goodix.fingerstatus"

    invoke-static {v3, v4}, Lcom/goodix/gftest/TouchTestActivity;->access$1400(Lcom/goodix/gftest/TouchTestActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "up"

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v5}, Lcom/goodix/gftest/TouchTestActivity;->access$1500(Lcom/goodix/gftest/TouchTestActivity;)J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-ltz v1, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v1}, Lcom/goodix/gftest/TouchTestActivity;->access$1600(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const v3, 0x7f0d0156

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v1, "TEST_BIO_ASSAY start step 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1502(Lcom/goodix/gftest/TouchTestActivity;J)J

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1700(Lcom/goodix/gftest/TouchTestActivity;)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$1800(Lcom/goodix/gftest/TouchTestActivity;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$2000(Lcom/goodix/gftest/TouchTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$4;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$1900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.class Lcom/goodix/gftest/TouchTestActivity$5;
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

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const-string v1, "sys.goodix.fingerstatus"

    invoke-static {v0, v1}, Lcom/goodix/gftest/TouchTestActivity;->access$1400(Lcom/goodix/gftest/TouchTestActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$1800(Lcom/goodix/gftest/TouchTestActivity;)V

    goto :goto_0

    :cond_1
    const-string v0, "TouchTestActivity"

    const-string v1, "check system properties again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$2000(Lcom/goodix/gftest/TouchTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$5;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2100(Lcom/goodix/gftest/TouchTestActivity;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.class Lcom/goodix/gftest/TouchTestActivity$8;
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

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$8;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "check system properties"

    const-string v1, "TouchTestActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$8;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$5000(Lcom/goodix/gftest/TouchTestActivity;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$502([I)[I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$8;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$202(Lcom/goodix/gftest/TouchTestActivity;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoTestRunnable mAutoTest = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/gftest/TouchTestActivity$8;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v2}, Lcom/goodix/gftest/TouchTestActivity;->access$200(Lcom/goodix/gftest/TouchTestActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$8;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$400(Lcom/goodix/gftest/TouchTestActivity;)V

    return-void
.end method

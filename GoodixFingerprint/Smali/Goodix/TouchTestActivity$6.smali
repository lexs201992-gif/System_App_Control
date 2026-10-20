.class Lcom/goodix/gftest/TouchTestActivity$6;
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

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$6;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$6;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/goodix/gftest/TouchTestActivity;->access$2200(Lcom/goodix/gftest/TouchTestActivity;I)V

    return-void
.end method

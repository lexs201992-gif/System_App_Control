.class Lcom/goodix/gftest/AutoTestActivity$8;
.super Ljava/lang/Object;
.source "AutoTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$8;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$8;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->access$2200(Lcom/goodix/gftest/AutoTestActivity;I)V

    return-void
.end method

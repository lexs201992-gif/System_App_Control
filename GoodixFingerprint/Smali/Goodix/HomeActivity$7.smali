.class Lcom/goodix/gftest/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/HomeActivity;
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

    iput-object p1, p0, Lcom/goodix/gftest/HomeActivity$7;->this$0:Lcom/goodix/gftest/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/gftest/HomeActivity$7;->this$0:Lcom/goodix/gftest/HomeActivity;

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/goodix/gftest/HomeActivity;->access$2200(Lcom/goodix/gftest/HomeActivity;I)V

    return-void
.end method

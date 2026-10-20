.class Lcom/goodix/gftest/AutoTestActivity$2;
.super Ljava/lang/Object;
.source "AutoTestActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/gftest/AutoTestActivity;->initView()V
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

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/AutoTestActivity;->access$100(Lcom/goodix/gftest/AutoTestActivity;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "onItemClick mAutoTest = "

    const-string p2, "AutoTestActivityLog"

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/AutoTestActivity;->access$200(Lcom/goodix/gftest/AutoTestActivity;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/AutoTestActivity;->access$200(Lcom/goodix/gftest/AutoTestActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/AutoTestActivity;->access$300(Lcom/goodix/gftest/AutoTestActivity;)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1}, Lcom/goodix/gftest/AutoTestActivity;->access$300(Lcom/goodix/gftest/AutoTestActivity;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_1
    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    const p2, 0x7f0d0020

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/goodix/gftest/AutoTestActivity;->access$302(Lcom/goodix/gftest/AutoTestActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/AutoTestActivity;->access$300(Lcom/goodix/gftest/AutoTestActivity;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/AutoTestActivity;->access$400(Lcom/goodix/gftest/AutoTestActivity;)V

    :goto_0
    return-void

    :cond_3
    add-int/lit8 p4, p3, -0x1

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object p5

    array-length p5, p5

    if-lt p4, p5, :cond_4

    iget-object p5, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p5}, Lcom/goodix/gftest/AutoTestActivity;->access$200(Lcom/goodix/gftest/AutoTestActivity;)Z

    move-result p5

    if-eqz p5, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/AutoTestActivity;->access$200(Lcom/goodix/gftest/AutoTestActivity;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {p1, p3}, Lcom/goodix/gftest/AutoTestActivity;->access$602(Lcom/goodix/gftest/AutoTestActivity;I)I

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity$2;->this$0:Lcom/goodix/gftest/AutoTestActivity;

    invoke-static {}, Lcom/goodix/gftest/AutoTestActivity;->access$500()[I

    move-result-object p1

    aget p1, p1, p4

    invoke-static {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->access$700(Lcom/goodix/gftest/AutoTestActivity;I)Z

    return-void
.end method

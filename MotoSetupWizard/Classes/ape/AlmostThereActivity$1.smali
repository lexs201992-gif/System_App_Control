.class Lcom/ape/setupwizard/activity/AlmostThereActivity$1;
.super Ljava/lang/Object;
.source "AlmostThereActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/AlmostThereActivity;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/AlmostThereActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$100(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$200(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/ape/setupwizard/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

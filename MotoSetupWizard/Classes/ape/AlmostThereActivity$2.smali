.class Lcom/ape/setupwizard/activity/AlmostThereActivity$2;
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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isCPFValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$300(Lcom/ape/setupwizard/activity/AlmostThereActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    const v0, 0x7f110087

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.class Lcom/ape/setupwizard/activity/ThereMoreActivity$3;
.super Ljava/lang/Object;
.source "ThereMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/ThereMoreActivity;->initView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$302(Lcom/ape/setupwizard/activity/ThereMoreActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$300(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$300(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$400(Lcom/ape/setupwizard/activity/ThereMoreActivity;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    const v0, 0x7f110088

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.class Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;
.super Ljava/lang/Object;
.source "MotoCPForIDActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "co"

    const-string v3, "br"

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$300(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isCPFValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v4, v0

    :cond_0
    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$300(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isIDNumberValid(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpf"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->finish()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$300(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    const v1, 0x7f110087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$300(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    const v0, 0x7f110089

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

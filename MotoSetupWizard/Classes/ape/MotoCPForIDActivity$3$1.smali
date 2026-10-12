.class Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;
.super Ljava/lang/Object;
.source "MotoCPForIDActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;

    iget-object p2, p2, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p2}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "cpf"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;

    iget-object p2, p2, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->finish()V

    return-void
.end method

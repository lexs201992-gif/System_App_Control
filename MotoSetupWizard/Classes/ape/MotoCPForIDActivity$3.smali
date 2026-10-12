.class Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;
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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$100(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$100(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$1;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$100(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$2;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3$2;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;->this$0:Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->access$400(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

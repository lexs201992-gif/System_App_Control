.class Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;
.super Ljava/lang/Object;
.source "StayInTheKnowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    iput-object p2, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)Z

    move-result p1

    const-string v0, "isNotification"

    const/4 v1, 0x1

    const-string v2, "optin_notify"

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/ape/setupwizard/activity/ThereMoreActivity;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-static {v1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v3, -0x1

    invoke-static {p1, v3}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-static {v1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->access$200(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->this$0:Lcom/ape/setupwizard/activity/StayInTheKnowActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

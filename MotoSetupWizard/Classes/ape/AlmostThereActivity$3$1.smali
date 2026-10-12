.class Lcom/ape/setupwizard/activity/AlmostThereActivity$3$1;
.super Ljava/lang/Object;
.source "AlmostThereActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/AlmostThereActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ape/setupwizard/activity/AlmostThereActivity$3;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/AlmostThereActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/AlmostThereActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$3$1;->this$1:Lcom/ape/setupwizard/activity/AlmostThereActivity$3;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity$3;->this$0:Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->access$300(Lcom/ape/setupwizard/activity/AlmostThereActivity;Ljava/lang/String;)V

    return-void
.end method

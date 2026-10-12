.class Lcom/ape/setupwizard/activity/ThereMoreActivity$4;
.super Ljava/lang/Object;
.source "ThereMoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/ThereMoreActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    iput-object p2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;->this$0:Lcom/ape/setupwizard/activity/ThereMoreActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->access$400(Lcom/ape/setupwizard/activity/ThereMoreActivity;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

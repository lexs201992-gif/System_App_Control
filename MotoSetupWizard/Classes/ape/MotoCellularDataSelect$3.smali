.class Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;
.super Ljava/lang/Object;
.source "MotoCellularDataSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->showProgressDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p2, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    const/4 v0, -0x1

    invoke-static {p2, p0, v0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->onNext(Landroid/content/Intent;Landroid/app/Activity;I)V

    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

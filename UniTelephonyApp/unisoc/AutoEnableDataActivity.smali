.class public Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "AutoEnableDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;
    }
.end annotation


# static fields
.field private static DIALOG_TAG:Ljava/lang/String; = "AutoEnableDataDialog"

.field private static TAG:Ljava/lang/String; = "AutoEnableDataActivity"


# instance fields
.field private mDialog:Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;


# direct methods
.method static bridge synthetic -$$Nest$mdoPositiveClick(Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->doPositiveClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private doPositiveClick()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showEnableDataDialog()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->mDialog:Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->TAG:Ljava/lang/String;

    const-string v1, "show AutoEnableDataDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->DIALOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->mDialog:Lcom/unisoc/phone/subsidy/AutoEnableDataActivity$AlertDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->DIALOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->showEnableDataDialog()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/unisoc/phone/subsidy/AutoEnableDataActivity;->showEnableDataDialog()V

    return-void
.end method

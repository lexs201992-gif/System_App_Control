.class Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;
.super Ljava/lang/Object;
.source "MotoPrivacyControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->access$000(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/Utils;->setTosAccepted(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->finish()V

    return-void
.end method

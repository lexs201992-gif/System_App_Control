.class Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;
.super Ljava/lang/Object;
.source "PrivacyUpdateControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/Utils;->setTosAccepted(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->access$100(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-static {v0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->access$200(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privacy_support_device"

    invoke-static {v1, v2, p1}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "privacy_help_improve_products"

    invoke-static {p1, v1, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$4;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->access$300(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

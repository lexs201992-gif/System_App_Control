.class Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;
.super Ljava/lang/Object;
.source "MotoPrivacyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->access$000(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/Utils;->setTosAccepted(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->access$000(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoPrivacyActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "kp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "privacy_help_improve_products"

    const-string v3, "privacy_support_device"

    if-nez v1, :cond_1

    const-string v1, "kr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v3, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    :try_start_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->access$100(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

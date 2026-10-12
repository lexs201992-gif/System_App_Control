.class Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;
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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/NetUtils;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f110126

    const v1, 0x7f110127

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    sget-boolean v2, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;->access$000(Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/ape/setupwizard/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v2, :cond_2

    const-string v3, "https://help.motorola.com/hc/apps/settings/index.php?type=privacy&m=lenovo"

    goto :goto_1

    :cond_2
    const-string v3, "https://help.motorola.com/hc/apps/settings/index.php?type=privacy"

    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "*/*"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "android.intent.extra.TITLE"

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.android.htmlviewer"

    const-string v1, "com.android.htmlviewer.MotoHTMLViewerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$3;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

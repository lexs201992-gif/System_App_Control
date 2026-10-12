.class Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;
.super Lcom/ape/setupwizard/utils/TouchableRippleSpan;
.source "MotoPrivacyActivity.java"


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
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ape/setupwizard/utils/TouchableRippleSpan;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPrivacyActivity;

    const-class v1, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 p0, 0x3e9

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

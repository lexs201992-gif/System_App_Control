.class Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;
.super Ljava/lang/Object;
.source "MotoPhoneProtectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->access$000(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/Utils;->setTosAccepted(Landroid/content/Context;Z)V

    :try_start_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->access$100(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)Z

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;->this$0:Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->access$200(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

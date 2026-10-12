.class Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;
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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$5;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    const-class v1, Lcom/ape/setupwizard/activity/JioLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

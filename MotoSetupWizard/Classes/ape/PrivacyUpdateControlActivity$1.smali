.class Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;
.super Ljava/lang/Object;
.source "PrivacyUpdateControlActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "privacy_help_improve_products"

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity$1;->this$0:Lcom/ape/setupwizard/activity/PrivacyUpdateControlActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.class Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;
.super Ljava/lang/Object;
.source "MotoFamilySpaceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFamilySpaceAppInstalled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;

    invoke-static {v2}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->access$100(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotoFamilySpaceActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;

    invoke-static {v1}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->access$100(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.motorola.spaces"

    const-string v0, "com.motorola.spaces.presentation.router.OnBoardRouterActivity"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "https://family-app.sandclowd.com/index.html"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "swStart"

    const-string v2, "true"

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;->this$0:Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

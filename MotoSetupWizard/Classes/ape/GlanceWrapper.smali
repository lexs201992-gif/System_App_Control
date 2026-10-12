.class public Lcom/ape/setupwizard/activity/GlanceWrapper;
.super Landroid/app/Activity;
.source "GlanceWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadNext(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isGLANCE(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/GlanceWrapper;->loadNext(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/GlanceWrapper;->loadNext(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

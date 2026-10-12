.class public Lcom/ape/setupwizard/activity/PrivacyUpdateActivity;
.super Landroid/app/Activity;
.source "PrivacyUpdateActivity.java"


# static fields
.field private static final BRAZIL_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "timbr"

    const-string v1, "tefbr"

    const-string v2, "retbr"

    const-string v3, "amxbr"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/PrivacyUpdateActivity;->BRAZIL_REGION:Ljava/util/List;

    return-void
.end method

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

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult--resultCode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PrivacyUpdateActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ape/setupwizard/activity/PrivacyUpdateActivity;->mCountryCode:Ljava/lang/String;

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ape/setupwizard/utils/Utils;->isCheckedCountry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3f4

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/PrivacyUpdateActivity;->loadNext(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x3f3

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/PrivacyUpdateActivity;->loadNext(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

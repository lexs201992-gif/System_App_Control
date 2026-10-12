.class public Lcom/ape/setupwizard/activity/MotoPrivacyActivity;
.super Landroid/app/Activity;
.source "MotoPrivacyActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpdateSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->loadNext()V

    return-void
.end method

.method private loadNext()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.ota.smart.update.USER_OPTIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->mUpdateSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "smartupdateOptin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.ota.Permissions.INTERACT_OTA_SERVICE"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

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

    const-string p3, "MotoPrivacyActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e9

    if-ne p1, p2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->loadNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "MotoPrivacyActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    const v0, 0x7f1204f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    const v2, 0x7f110129

    goto :goto_0

    :cond_1
    const v2, 0x7f11012a

    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f110128

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007f

    const v6, 0x7f060047

    if-eqz p1, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    new-instance v13, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    const v7, 0x7f06001d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const v5, 0x7f06007c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object v7, v13

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;IIII)V

    invoke-static {v0, v2, v3, v4, v13}, Lcom/ape/setupwizard/utils/TextViewUtil;->setDescriptionWithHighlightColorLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILcom/ape/setupwizard/utils/TouchableRippleSpan;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoPrivacyActivity$2;-><init>(Lcom/ape/setupwizard/activity/MotoPrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090289

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyActivity;->mUpdateSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {v1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    if-eqz p1, :cond_5

    const p1, 0x7f0800dd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f090132

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const p1, 0x7f0800be

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

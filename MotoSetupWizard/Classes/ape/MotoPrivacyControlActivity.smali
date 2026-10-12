.class public Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;
.super Landroid/app/Activity;
.source "MotoPrivacyControlActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static TAG:Ljava/lang/String; = "MotoPrivacyControlActivity"


# instance fields
.field private isShowActionBar:Z

.field private mContext:Landroid/content/Context;

.field private mMotoHelp:Landroid/widget/Switch;

.field private mMotoSupport:Landroid/widget/Switch;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->isShowActionBar:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getErrorMessage()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v1, 0x7f110067

    goto :goto_0

    :cond_0
    const v1, 0x7f11009c

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1100cb

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initPrivacyandExperiencesSwitchValues()V
    .locals 7

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoSupport:Landroid/widget/Switch;

    const-string v2, "kr"

    const-string v3, "kp"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "privacy_support_device"

    invoke-static {v1, v6, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_1
    iget-object v6, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoSupport:Landroid/widget/Switch;

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoHelp:Landroid/widget/Switch;

    if-eqz v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "privacy_help_improve_products"

    if-nez v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v5}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_4
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoHelp:Landroid/widget/Switch;

    if-ne v0, v5, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v2, 0x7f0800dd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f090253

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoSupport:Landroid/widget/Switch;

    const v0, 0x7f090252

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoHelp:Landroid/widget/Switch;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$2;-><init>(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)V

    new-instance v2, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$3;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity$3;-><init>(Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;)V

    iget-object v3, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoSupport:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mMotoHelp:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f09012f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09028e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09012e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f09024f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const v1, 0x7f06007f

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f110122

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f11011e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/NetUtils;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result p1

    const v0, 0x7f110126

    const v1, 0x7f110127

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mContext:Landroid/content/Context;

    sget-boolean v2, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->getErrorMessage()Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v0, "com.android.htmlviewer"

    const-string v1, "com.android.htmlviewer.MotoHTMLViewerActivity"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "isShowActionBar"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->isShowActionBar:Z

    const-string v0, "motolora_privacy_title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mTitle:Ljava/lang/String;

    :cond_0
    iget-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->isShowActionBar:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1204f3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f12014a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    const p1, 0x7f0c0026

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_4

    const p1, 0x7f1204f1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_4
    const p1, 0x7f0c0025

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    :cond_5
    :goto_1
    sget-object p1, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate isShowActionBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->isShowActionBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPrivacyControlActivity;->initPrivacyandExperiencesSwitchValues()V

    return-void
.end method

.class public Lcom/ape/setupwizard/activity/StayInTheKnowActivity;
.super Landroid/app/Activity;
.source "StayInTheKnowActivity.java"


# instance fields
.field private isNotification:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->isNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->showPrivacy()V

    return-void
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->isNotification:Z

    return p0
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

.method private initView(I)V
    .locals 10

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090275

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090092

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090093

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090060

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0800be

    const v8, 0x7f0800c7

    const v9, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p1, 0x7f06030d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f06030b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f06030a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const p1, 0x7f060024

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v0, :cond_3

    const v0, 0x7f110126

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    new-instance v0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$1;-><init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$2;-><init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09024b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$3;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$3;-><init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showDialog()V
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120002

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x7f0900b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$4;-><init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity$5;-><init>(Lcom/ape/setupwizard/activity/StayInTheKnowActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPrivacy()V
    .locals 6

    invoke-static {p0}, Lcom/ape/setupwizard/utils/NetUtils;->isDataConnectionAvailable(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f110126

    const v2, 0x7f110127

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ape/setupwizard/utils/Utils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v3, :cond_2

    const-string v4, "https://help.motorola.com/hc/apps/settings/index.php?type=privacy&m=lenovo"

    goto :goto_1

    :cond_2
    const-string v4, "https://help.motorola.com/hc/apps/settings/index.php?type=privacy"

    :goto_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "*/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "android.intent.extra.TITLE"

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.android.htmlviewer"

    const-string v2, "com.android.htmlviewer.MotoHTMLViewerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "isNotification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->isNotification:Z

    :cond_0
    iput-object p0, p0, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/ape/setupwizard/utils/SPUtils;->getTheme(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_2

    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1204f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1204f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    goto :goto_2

    :cond_2
    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_3

    const v1, 0x7f1204f2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_3
    const v1, 0x7f1204f5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    :goto_2
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/StayInTheKnowActivity;->initView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.class public Lcom/ape/setupwizard/activity/ThereMoreActivity;
.super Landroid/app/Activity;
.source "ThereMoreActivity.java"


# instance fields
.field private isNotification:Z

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mEmailEditText:Landroid/widget/EditText;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailSelected:Ljava/lang/String;

.field private mOptinNotify:Z

.field private mRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailList:Ljava/util/List;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailSelected:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mCountryCode:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mOptinNotify:Z

    iput-boolean v1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->isNotification:Z

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->showPrivacy()V

    return-void
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/ThereMoreActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ape/setupwizard/activity/ThereMoreActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/ThereMoreActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->sendCCEMarketOptInIntent(Ljava/lang/String;Z)V

    return-void
.end method

.method private getAccounts()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailList:Ljava/util/List;

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/ape/setupwizard/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailList:Ljava/util/List;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v4, "ThereMoreActivity"

    const-string v5, "Not an email account. Do not show in list."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailSelected:Ljava/lang/String;

    :cond_2
    return-void
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
    .locals 11

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

    const v7, 0x7f0900d0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    const v7, 0x7f060024

    const v8, 0x7f0800be

    const v9, 0x7f0800c2

    const v10, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

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

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f06030a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    :goto_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailSelected:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailSelected:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
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

    if-eqz v0, :cond_4

    const v0, 0x7f110126

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v0, Lcom/ape/setupwizard/activity/ThereMoreActivity$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity$1;-><init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/ThereMoreActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity$2;-><init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09024b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity$3;-><init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sendCCEMarketOptInIntent(Ljava/lang/String;Z)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string p1, "ThereMoreActivity"

    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mRegion:Ljava/lang/String;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/Utils;->isBr(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.ccc.cce.email.action.EXTERNAL_MARKETOPTIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "optin"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "email"

    iget-object v2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "emailid"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "country"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, "2.1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source"

    const-string v3, "setup"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "optin_push"

    iget-boolean v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mOptinNotify:Z

    if-eqz v3, :cond_0

    const-string v3, "opted in"

    goto :goto_0

    :cond_0
    const-string v3, "undecided"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extraText"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ape/setupwizard/utils/SPUtils;->setExtra(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCCEMarketOptInIntent extraText "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , email ="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while forming JSON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setStay(Landroid/content/Context;I)V

    :try_start_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ape/setupwizard/MotoService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/ape/setupwizard/utils/SPUtils;->setOptin(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ape/setupwizard/utils/SPUtils;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mOptinNotify:Z

    invoke-static {p1, p2}, Lcom/ape/setupwizard/utils/SPUtils;->setOptinPush(Landroid/content/Context;Z)V

    iget-boolean p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->isNotification:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mRegion:Ljava/lang/String;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/Utils;->isBr(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "isNotification"

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ape/setupwizard/activity/MotoFinishActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->isNotification:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ape/setupwizard/activity/AlmostThereActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->isNotification:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private showDialog()V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011b

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

    const v2, 0x7f0900b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-static {v3}, Lcom/ape/setupwizard/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v3, 0x7f0900b5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900b7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v4, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;

    invoke-direct {v4, p0, v1}, Lcom/ape/setupwizard/activity/ThereMoreActivity$4;-><init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/ape/setupwizard/activity/ThereMoreActivity$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/ape/setupwizard/activity/ThereMoreActivity$5;-><init>(Lcom/ape/setupwizard/activity/ThereMoreActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->getErrorMessage()Ljava/lang/String;

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
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/ape/setupwizard/utils/SPUtils;->getTheme(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1204f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1204f4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ape/setupwizard/utils/LPUtils;->setNavIcon(Landroid/view/Window;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/ape/setupwizard/utils/LPUtils;->setStatusBarLight(Landroid/view/Window;Z)V

    goto :goto_2

    :cond_1
    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1204f2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_1

    :cond_2
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
    const v1, 0x7f0c011a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "optin_notify"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mOptinNotify:Z

    const-string v2, "isNotification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->isNotification:Z

    :cond_3
    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mRegion:Ljava/lang/String;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/ThereMoreActivity;->mCountryCode:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->getAccounts()V

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/ThereMoreActivity;->initView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

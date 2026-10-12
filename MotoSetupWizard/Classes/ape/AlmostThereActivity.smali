.class public Lcom/ape/setupwizard/activity/AlmostThereActivity;
.super Landroid/app/Activity;
.source "AlmostThereActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ape/setupwizard/activity/AlmostThereActivity$CpfWatcher;,
        Lcom/ape/setupwizard/activity/AlmostThereActivity$Action;
    }
.end annotation


# instance fields
.field private cpfWatcher:Lcom/ape/setupwizard/activity/AlmostThereActivity$CpfWatcher;

.field private dialog_summary1:Ljava/lang/String;

.field private dialog_summary2:Ljava/lang/String;

.field private edT:Landroid/widget/EditText;

.field private isNotification:Z

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mEmail:Ljava/lang/String;

.field private mOptinEmail:Z

.field private mOptinNotify:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "br"

    iput-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mCountryCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinNotify:Z

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinEmail:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->isNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->dialog_summary2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/AlmostThereActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->sendCCEMarketOptInIntent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/AlmostThereActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->dialog_summary1:Ljava/lang/String;

    return-object p0
.end method

.method private initView(I)V
    .locals 8

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

    const v4, 0x7f0900d0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    const v4, 0x7f090060

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0800be

    const v6, 0x7f0800c7

    const v7, 0x7f060310

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

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

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_1
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const p1, 0x7f060024

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_2
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_3

    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    const v0, 0x7f110107

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    const v1, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    const v1, 0x7f11010d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$CpfWatcher;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->edT:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/ape/setupwizard/activity/AlmostThereActivity$CpfWatcher;-><init>(Lcom/ape/setupwizard/activity/AlmostThereActivity;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->cpfWatcher:Lcom/ape/setupwizard/activity/AlmostThereActivity$CpfWatcher;

    const v0, 0x7f110038

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_4

    const v2, 0x7f11003b

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const v2, 0x7f11003a

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->dialog_summary1:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f11003d

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f11003c

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    iput-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->dialog_summary2:Ljava/lang/String;

    const p1, 0x7f090274

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f090127

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity$1;-><init>(Lcom/ape/setupwizard/activity/AlmostThereActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09024b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity$2;-><init>(Lcom/ape/setupwizard/activity/AlmostThereActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/ape/setupwizard/activity/AlmostThereActivity$3;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/AlmostThereActivity$3;-><init>(Lcom/ape/setupwizard/activity/AlmostThereActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private sendCCEMarketOptInIntent(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "sendCCEMarketOptInIntent"

    const-string v1, "AlmostThereActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.ccc.cce.email.action.EXTERNAL_MARKETOPTIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "optin"

    iget-boolean v3, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinEmail:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "email"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cpf"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CPF"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v3, "emailid"

    iget-object v4, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "country"

    iget-object v4, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    const-string v4, "2.1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "source"

    const-string v4, "setup"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "optin_push"

    iget-boolean v4, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinNotify:Z

    if-eqz v4, :cond_1

    const-string v4, "opted in"

    goto :goto_0

    :cond_1
    const-string v4, "undecided"

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extraText"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ape/setupwizard/utils/SPUtils;->setExtra(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCCEMarketOptInIntent extraText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , email ="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while forming JSON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ape/setupwizard/utils/SPUtils;->setStay(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ape/setupwizard/utils/SPUtils;->setCPF(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinEmail:Z

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setOptin(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setEmail(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinNotify:Z

    invoke-static {p1, v0}, Lcom/ape/setupwizard/utils/SPUtils;->setOptinPush(Landroid/content/Context;Z)V

    :try_start_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

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

    :goto_2
    iget-boolean p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->isNotification:Z

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/ape/setupwizard/activity/MotoFinishActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isNotification"

    iget-boolean v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->isNotification:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

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


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

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
    const v1, 0x7f0c0028

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "isNotification"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->isNotification:Z

    :cond_3
    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/SPUtils;->getOptinPush(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinNotify:Z

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/SPUtils;->getOptin(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mOptinEmail:Z

    iget-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ape/setupwizard/utils/SPUtils;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/AlmostThereActivity;->mEmail:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/AlmostThereActivity;->initView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.class public Lcom/ape/setupwizard/activity/MotoCPForIDActivity;
.super Landroid/app/Activity;
.source "MotoCPForIDActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;,
        Lcom/ape/setupwizard/activity/MotoCPForIDActivity$Action;
    }
.end annotation


# instance fields
.field private cpfWatcher:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;

.field private dialog_summary1:Ljava/lang/String;

.field private dialog_summary2:Ljava/lang/String;

.field private edT:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "br"

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mCountryCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary2:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary1:Ljava/lang/String;

    return-object p0
.end method

.method private initView()V
    .locals 11

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900d0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    const v3, 0x3f5eb852    # 0.87f

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setAlpha(F)V

    const-string v2, "br"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const v3, 0x7f11003d

    const v4, 0x7f11003c

    const v5, 0x7f11003b

    const v6, 0x7f11003a

    const v7, 0x7f11010f

    const v8, 0x7f11010e

    const v9, 0x7f110038

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    const v7, 0x7f11010d

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(I)V

    new-instance v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;

    iget-object v7, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    invoke-direct {v1, p0, v7}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;Landroid/widget/EditText;)V

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->cpfWatcher:Lcom/ape/setupwizard/activity/MotoCPForIDActivity$CpfWatcher;

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v6, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary1:Ljava/lang/String;

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_2

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary2:Ljava/lang/String;

    goto :goto_6

    :cond_3
    const-string v2, "co"

    iget-object v10, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    const v7, 0x7f11010c

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHint(I)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->edT:Landroid/widget/EditText;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    const v1, 0x7f110060

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v6, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary1:Ljava/lang/String;

    const v1, 0x7f110061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v4, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->dialog_summary2:Ljava/lang/String;

    :cond_7
    :goto_6
    const v1, 0x7f090274

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    const v2, 0x7f090127

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$1;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$2;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090075

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity$3;-><init>(Lcom/ape/setupwizard/activity/MotoCPForIDActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean p0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p0, :cond_8

    const p0, 0x7f0800be

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
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

    const-string v0, "MotoCPForIDActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1204f1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1204f4

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :goto_0
    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "country"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotoCPForIDActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->mCountryCode:Ljava/lang/String;

    :cond_1
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;->initView()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.class public Lcom/ape/setupwizard/activity/StayInTouchActivity;
.super Landroid/app/Activity;
.source "StayInTouchActivity.java"


# static fields
.field private static final COLOMBIA_REGION:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETEU_COUNTRY_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETRU_COUNTRY_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StayInTouchActivity"

.field private static final TELEU_COUNTRY_CODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private emailEditText:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

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

.field private mEmailSwitch:Landroid/widget/Switch;

.field private mNotificationSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "tigco"

    const-string v1, "amxco"

    const-string v2, "retla"

    const-string v3, "tefco"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->COLOMBIA_REGION:Ljava/util/List;

    const-string v0, "ro"

    const-string v1, "it"

    const-string v2, "nl"

    const-string v3, "es"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->RETEU_COUNTRY_CODE:Ljava/util/List;

    const-string v0, "sr"

    const-string v1, "uk"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TELEU_COUNTRY_CODE:Ljava/util/List;

    const-string v0, "ru"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->RETRU_COUNTRY_CODE:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailList:Ljava/util/List;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/StayInTouchActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/StayInTouchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->onNextButtonClicked()V

    return-void
.end method

.method private getAccounts()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailList:Ljava/util/List;

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

    iget-object v5, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailList:Ljava/util/List;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TAG:Ljava/lang/String;

    const-string v5, "Not an email account. Do not show in list."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

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

.method private final initView()V
    .locals 13

    const v0, 0x7f0900d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    const v0, 0x7f090157

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ape/setupwizard/view/Item;

    const v1, 0x7f1100d5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f1100d4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setDescription(Ljava/lang/String;)V

    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0900ea

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ape/setupwizard/view/Item;

    const v1, 0x7f11004e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f11004d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setDescription(Ljava/lang/String;)V

    const v1, 0x7f0800cf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ape/setupwizard/view/Item;

    const v1, 0x7f110021

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110020

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setDescription(Ljava/lang/String;)V

    const v1, 0x7f0800d4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0900f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ape/setupwizard/view/Item;

    const v1, 0x7f110052

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110051

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setDescription(Ljava/lang/String;)V

    const v1, 0x7f0800d2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ape/setupwizard/view/Item;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/ape/setupwizard/utils/Utils;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    sget-object v1, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCountryCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_3

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v2, 0x7f1100e4

    goto :goto_0

    :cond_0
    const v2, 0x7f1100e5

    :goto_0
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v2, 0x7f1100e3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06007f

    const v4, 0x7f060047

    if-eqz v1, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    new-instance v11, Lcom/ape/setupwizard/activity/StayInTouchActivity$1;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v5, 0x7f06001d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object v0, v11

    move-object v1, p0

    move v3, v5

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/ape/setupwizard/activity/StayInTouchActivity$1;-><init>(Lcom/ape/setupwizard/activity/StayInTouchActivity;IIII)V

    invoke-static {v7, v8, v9, v10, v11}, Lcom/ape/setupwizard/utils/TextViewUtil;->setDescriptionWithHighlightColorLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ILcom/ape/setupwizard/utils/TouchableRippleSpan;)V

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSwitch:Landroid/widget/Switch;

    const v0, 0x7f090185

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mNotificationSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "us"

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "in"

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/ape/setupwizard/utils/Utils;->is_EMAIL_CHECKED_REGION()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mNotificationSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    const v1, 0x3e851eb8    # 0.26f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mNotificationSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    const v2, 0x3f5eb852    # 0.87f

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_4
    new-instance v0, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity$2;-><init>(Lcom/ape/setupwizard/activity/StayInTouchActivity;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/ape/setupwizard/activity/StayInTouchActivity$3;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity$3;-><init>(Lcom/ape/setupwizard/activity/StayInTouchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    return-void
.end method

.method private onNextButtonClicked()V
    .locals 4

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/ape/setupwizard/utils/Utils;->isEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    const v1, 0x7f110088

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ape/setupwizard/activity/MotoCPForIDActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    const-string v3, "co"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ape/setupwizard/activity/StayInTouchActivity;->COLOMBIA_REGION:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "country"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->sendCCEMarketOptInIntent(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p0}, Lcom/ape/setupwizard/MotoApplication;->clearAllActvity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private sendCCEMarketOptInIntent(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TAG:Ljava/lang/String;

    const-string v1, "sendCCEMarketOptInIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.ccc.cce.email.action.EXTERNAL_MARKETOPTIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const-string v3, "optin"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "cpf"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "CPF"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "emailid"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mEmailSelected:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "country"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string v3, "2.1"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "source"

    const-string v3, "setup"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "optin_push"

    iget-object v3, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mNotificationSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "opted in"

    goto :goto_0

    :cond_2
    const-string v3, "undecided"

    :goto_0
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extraText"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCCEMarketOptInIntent extraText "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , email ="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->emailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred while forming JSON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/ape/setupwizard/activity/StayInTouchActivity;->mContext:Landroid/content/Context;

    const-string p1, "com.motorola.blur.service.blur.Permissions.INTERACT_BLUR_SERVICE"

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object p1, Lcom/ape/setupwizard/activity/StayInTouchActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult--resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e8

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "cpf"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->sendCCEMarketOptInIntent(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p0}, Lcom/ape/setupwizard/MotoApplication;->clearAllActvity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_0

    const p1, 0x7f1204f1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_0
    const p1, 0x7f0c0027

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->getAccounts()V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/StayInTouchActivity;->initView()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p1, p0}, Lcom/ape/setupwizard/MotoApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

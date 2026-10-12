.class public Lcom/ape/setupwizard/activity/MotoCellularDataSelect;
.super Landroid/app/Activity;
.source "MotoCellularDataSelect.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static mProgressBarTimeout:I


# instance fields
.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableNwMenu:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoSelectEnabled:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimEnabled:Z

.field mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSimSelectedSlotId:I

.field public mSpinner:Landroid/widget/Spinner;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mEnableNwMenu:Z

    new-instance v1, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;-><init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V

    iput-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mIsAutoSelectEnabled:Z

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-boolean v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimEnabled:Z

    new-instance v2, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;

    invoke-direct {v2, p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;-><init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V

    iput-object v2, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    iput v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimSelectedSlotId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressBarTimeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->populateSimList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setSpinnerDefaultValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->updateSpinnerState(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimEnabled:Z

    return p1
.end method

.method private getDefaultDataSlotId()I
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultDataSubscriptionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Slot ID = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SelectData"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private loadResources()V
    .locals 4

    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0901cd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f1100ee

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(I)V

    const v1, 0x7f060272

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090248

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v0, 0x7f0900a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private populateSimList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1100f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "1"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "2"

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private setDefaultData()V
    .locals 4

    iget v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimSelectedSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select subId>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SelectData"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_0
    return-void
.end method

.method private setSpinnerDefaultValue()V
    .locals 4

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->getDefaultDataSlotId()I

    move-result v0

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->isAutoSelectCarrier(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstBootValue>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getFirstBootValue(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->dualSimCardsExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getFirstBootValue(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/ape/setupwizard/utils/MultiSimUtils;->TIM_BR:Z

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getPreferSlotId(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferedSlot>>>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->dualSimCardsExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/ape/setupwizard/utils/MultiSimUtils;->TIM_BR:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const v1, 0x7f0901fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1100ed

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setSpinnerSimList()V
    .locals 3

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->populateSimList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c007f

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setSpinnerDefaultValue()V

    :cond_0
    return-void
.end method

.method private showProgressDialog(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    :cond_2
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f110037

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimSelectedSlotId:I

    invoke-static {v1, v2}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110036

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f110029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$3;-><init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$4;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$4;-><init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private updateSpinnerState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpinnerState - status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onClickStart()V
    .locals 1

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setDefaultData()V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->loadResources()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mProgressBarTimeout:I

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->isSimActive(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimEnabled:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->showProgressDialog(I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSpinner:Landroid/widget/Spinner;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->getFirstBootValue(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimEnabled:Z

    if-eqz p3, :cond_1

    invoke-static {p0, p2}, Lcom/ape/setupwizard/utils/MultiSimUtils;->setFirstBootValue(Landroid/content/Context;Z)V

    :cond_1
    iput p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimSelectedSlotId:I

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setDefaultData()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemSelected mSimSelectedSlotId>>>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimSelectedSlotId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SelectData"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->onClickStart()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->updateSpinnerState(I)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setSpinnerDefaultValue()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->setSpinnerSimList()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onclickEmergencyCall(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->makeEmergencyCall(Landroid/content/Context;)V

    return-void
.end method

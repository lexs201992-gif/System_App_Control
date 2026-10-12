.class public Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;
.super Landroid/app/Activity;
.source "MotoSimCardGraphicActivity.java"


# static fields
.field private static final resIds:[I


# instance fields
.field private hasRegister:Z

.field private mCancel:Landroid/widget/TextView;

.field private mSimCardType:Ljava/lang/String;

.field private mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSimImage:Landroid/widget/ImageView;

.field private simStateReceiver:Lcom/ape/setupwizard/SimStateReceiver;


# direct methods
.method public static synthetic $r8$lambda$vTpW3NvYLvugdcCEKJl4cLi0WVM(Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->lambda$registerSimReceiver$0(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f100001

    const/high16 v1, 0x7f100000

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->resIds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimCardType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->hasRegister:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->loadNext(I)V

    return-void
.end method

.method private isSingleSimCardType()Z
    .locals 1

    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimCardType:Ljava/lang/String;

    const-string p0, "dsds"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$registerSimReceiver$0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->loadNext(I)V

    :cond_0
    return-void
.end method

.method private loadNext(I)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private registerSimReceiver(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->simStateReceiver:Lcom/ape/setupwizard/SimStateReceiver;

    if-nez p1, :cond_0

    new-instance p1, Lcom/ape/setupwizard/SimStateReceiver;

    invoke-direct {p1}, Lcom/ape/setupwizard/SimStateReceiver;-><init>()V

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->simStateReceiver:Lcom/ape/setupwizard/SimStateReceiver;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity$$ExternalSyntheticLambda0;-><init>(Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;)V

    invoke-virtual {p1, v0}, Lcom/ape/setupwizard/SimStateReceiver;->setOnSimSwitchListener(Lcom/ape/setupwizard/SimStateReceiver$OnSimChangeListener;)V

    :cond_0
    iget-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->hasRegister:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->hasRegister:Z

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->simStateReceiver:Lcom/ape/setupwizard/SimStateReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->simStateReceiver:Lcom/ape/setupwizard/SimStateReceiver;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->hasRegister:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->hasRegister:Z

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    const p1, 0x7f0901d9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->isSingleSimCardType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimImage:Landroid/widget/ImageView;

    const v1, 0x7f08011f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    const p1, 0x7f090075

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity$1;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901d8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->isSingleSimCardType()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->resIds:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->resIds:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->registerSimReceiver(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ape/setupwizard/activity/MotoSimCardGraphicActivity;->registerSimReceiver(Z)V

    return-void
.end method

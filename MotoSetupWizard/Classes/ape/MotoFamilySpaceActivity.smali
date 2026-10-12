.class public Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;
.super Landroid/app/Activity;
.source "MotoFamilySpaceActivity.java"


# static fields
.field private static final FRANCE_REGION:[Ljava/lang/String;

.field private static FSApp:Ljava/lang/String;

.field private static FSAppGooglePlay:Ljava/lang/String;

.field private static FSAppMainActivity:Ljava/lang/String;


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mNext:Landroid/widget/TextView;

.field private mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "reteu"

    const-string v1, "oraeu"

    const-string v2, "bouyfr"

    const-string v3, "openeu"

    const-string v4, "altice"

    const-string v5, "reteu2"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FRANCE_REGION:[Ljava/lang/String;

    const-string v0, "com.motorola.spaces"

    sput-object v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FSApp:Ljava/lang/String;

    const-string v0, "https://family-app.sandclowd.com/index.html?swStart=true"

    sput-object v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FSAppMainActivity:Ljava/lang/String;

    const-string v0, "https://play.google.com/store/apps/details?id=com.motorola.spaces"

    sput-object v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FSAppGooglePlay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->loadNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->isFamilySpaceAppInstalled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FSAppMainActivity:Ljava/lang/String;

    return-object v0
.end method

.method private isFamilySpaceAppInstalled()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "Package Name"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FSApp:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isFrRegion()Z
    .locals 3

    const-string p0, "ro.carrier"

    const-string v0, "unknow"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarrier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Arrays.asList(FRANCE_REGION).contains(mCarrier) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->FRANCE_REGION:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MotoFamilySpaceActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadNext()V
    .locals 2

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

    const-string p3, "resultCode = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MotoFamilySpaceActivity"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3e9

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->loadNext()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->isFrRegion()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->loadNext()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const p1, 0x7f0c001d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    const p1, 0x7f0900e0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mCancel:Landroid/widget/TextView;

    const p1, 0x7f0900e3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mNext:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mCancel:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$1;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mNext:Landroid/widget/TextView;

    new-instance v0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;

    invoke-direct {v0, p0}, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity$2;-><init>(Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900e1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f100002

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoFamilySpaceActivity;->mSimGraphic:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.class public Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;
.super Landroid/app/Activity;
.source "MotoPhoneProtectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CLARO_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = "MotoPhoneProtectActivity"

.field private static final TELCEL_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "amxmx"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->TELCEL_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;

    const-string v0, "amxla"

    const-string v1, "amxpe"

    const-string v2, "amxcl"

    const-string v3, "amxco"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->CLARO_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->setDeviceOwner()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->loadNext()V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f09024b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mNextButton:Landroid/widget/Button;

    sget-boolean v1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;

    invoke-direct {v1, p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity$1;-><init>(Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private isClaro()Z
    .locals 5

    sget-object p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->CLARO_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isTelcel()Z
    .locals 5

    sget-object p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->TELCEL_CARRIER_PHONEPROTECT_NEED:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {}, Lcom/moto/feature/Carrier;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private loadNext()V
    .locals 3

    sget-boolean v0, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/ape/setupwizard/MotoApplication;

    invoke-virtual {p0}, Lcom/ape/setupwizard/MotoApplication;->clearAllActvity()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->getNextIntent(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private setDeviceOwner()Z
    .locals 4

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->isTelcel()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->isClaro()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const-string v2, "sk.sitic.pp"

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "sk.sitic.pp.Administrador"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwner(Landroid/content/ComponentName;I)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    iput-object p0, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->isTelcel()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->isClaro()Z

    move-result p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->loadNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->finish()V

    return-void

    :cond_0
    sget-boolean p1, Lcom/ape/setupwizard/utils/Utils;->LENOVO_VERSION:Z

    if-eqz p1, :cond_1

    const p1, 0x7f1204f1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    :cond_1
    const p1, 0x7f0c0021

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->initView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ape/setupwizard/activity/MotoPhoneProtectActivity;->onBackPressed()V

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

    return-void
.end method

.class public Lcom/android/stk/StkLauncherActivity;
.super Landroid/app/ListActivity;
.source "StkLauncherActivity.java"


# instance fields
.field private final LocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAcceptUsersInput:Z

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimCount:I

.field private mSingleSimId:I

.field private mSlotId:I

.field private mStkMenuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/cat/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIconView:Landroid/widget/ImageView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTitleTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTitleIconView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkLauncherActivity;->mSlotId:I

    iput v0, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    new-instance v0, Lcom/android/stk/StkLauncherActivity$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkLauncherActivity$1;-><init>(Lcom/android/stk/StkLauncherActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/stk/StkLauncherActivity$2;

    invoke-direct {v0, p0}, Lcom/android/stk/StkLauncherActivity$2;-><init>(Lcom/android/stk/StkLauncherActivity;)V

    iput-object v0, p0, Lcom/android/stk/StkLauncherActivity;->LocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addStkMenuListItems()I
    .locals 11

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StkLauncherActivity"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    :goto_1
    iget v7, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    if-ge v5, v7, :cond_8

    iget-object v7, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v7

    const-string v8, "SIM #"

    if-eqz v7, :cond_7

    if-eqz v3, :cond_2

    if-eqz v3, :cond_7

    invoke-virtual {v0, v5}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v7

    if-eqz v7, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is add to menu."

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-nez v9, :cond_3

    move-object v9, v2

    :cond_3
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;

    iget-object v10, v7, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_5

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    :cond_4
    move-object v9, v10

    :cond_5
    new-instance v7, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v7, v5, v8, v9}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " does not have main menu."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is not inserted."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_9

    new-instance v0, Lcom/android/stk/StkMenuAdapter;

    iget-object v2, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/stk/StkMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_9
    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_a
    const-string p0, "No stk menu item add."

    invoke-static {v6, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    instance-of p0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const-string v0, "StkLauncherActivity"

    if-eqz p0, :cond_0

    const-string p0, "Utilities.drawableToBitmap. drawable instanceof BitmapDrawable"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Utilities.drawableToBitmap, !(drawable instanceof BitmapDrawable)"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;
    .locals 1

    const-string v0, "StkLauncherActivity"

    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity;->mStkMenuList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/Item;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "NPE Invalid menu"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "IOOBE Invalid menu"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private launchSTKMainMenu(I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "StkLauncherActivity"

    const-string v2, "launchSTKMainMenu."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkAppService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public isAllVowifiOn()Z
    .locals 5

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    if-ge v2, v4, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-le v3, p0, :cond_2

    return p0

    :cond_2
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate+"

    const-string v0, "StkLauncherActivity"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p1

    iput p1, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/stk/StkLauncherActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/stk/StkLauncherActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v1, 0x7f0b0075

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const p1, 0x7f0b0073

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setContentView(I)V

    const p1, 0x7f0801d9

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f0801d7

    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity;->mTitleIconView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/stk/StkLauncherActivity;->mTitleTextView:Landroid/widget/TextView;

    const v2, 0x7f0e001d

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/stk/StkLauncherActivity;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "NameNotFoundException"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b2

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkLauncherActivity;->mBitMap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/stk/StkLauncherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/app/ListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "card_absent"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkLauncherActivity;->LocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/stk/StkLauncherActivity;->isAllVowifiOn()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "onCreate AirPlaneModeOn is on"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    const-string v0, "StkLauncherActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkLauncherActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity;->LocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAcceptUsersInput: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkLauncherActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const-string p1, "KEYCODE_BACK."

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    return v2
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    iget-boolean p1, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    const-string p2, "StkLauncherActivity"

    if-nez p1, :cond_0

    const-string p0, "mAcceptUsersInput:false"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/stk/StkLauncherActivity;->getSelectedItem(I)Lcom/android/internal/telephony/cat/Item;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Item is null"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "launch stk menu id: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/stk/StkLauncherActivity;->mTm:Landroid/telephony/TelephonyManager;

    iget p3, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    invoke-virtual {p2, p3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity;->mContext:Landroid/content/Context;

    const p1, 0x7f0e009c

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget p1, p1, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ltz p1, :cond_3

    iget p2, p0, Lcom/android/stk/StkLauncherActivity;->mSimCount:I

    if-ge p1, p2, :cond_3

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    invoke-direct {p0, p1}, Lcom/android/stk/StkLauncherActivity;->launchSTKMainMenu(I)V

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_3

    iget p2, p0, Lcom/android/stk/StkLauncherActivity;->mSlotId:I

    invoke-virtual {p1, p2}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p2

    if-eqz p2, :cond_3

    iget p0, p0, Lcom/android/stk/StkLauncherActivity;->mSlotId:I

    invoke-virtual {p1, p0}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService$StkContext;->setPendingActivityInstance(Landroid/app/Activity;)V

    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    const-string p0, "StkLauncherActivity"

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    const-string v0, "onResume"

    const-string v1, "StkLauncherActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/stk/StkLauncherActivity;->mAcceptUsersInput:Z

    invoke-direct {p0}, Lcom/android/stk/StkLauncherActivity;->addStkMenuListItems()I

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "item size = 0 so finish."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    iget v0, p0, Lcom/android/stk/StkLauncherActivity;->mSingleSimId:I

    invoke-direct {p0, v0}, Lcom/android/stk/StkLauncherActivity;->launchSTKMainMenu(I)V

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string p0, "resume to show multiple stk list."

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

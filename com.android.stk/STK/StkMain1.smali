.class public Lcom/android/stk/StkMain1;
.super Landroid/app/Activity;
.source "StkMain1.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkMain1;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/stk/StkMain1;->mTm:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private launchSTKMainMenu(I)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "StkMain1"

    const-string v2, "launchSTKMainMenu."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 p1, p1, 0x0

    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/android/stk/StkAppService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private showTextToast(Landroid/content/Context;I)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x50

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate+"

    const-string v0, "StkMain1"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkMain1;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/stk/StkMain1;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    const-string p1, "launchSTKMainMenu"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/stk/StkMain1;->launchSTKMainMenu(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/stk/StkMain1;->mContext:Landroid/content/Context;

    const v0, 0x7f0e0095

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkMain1;->showTextToast(Landroid/content/Context;I)V

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "StkMain1"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

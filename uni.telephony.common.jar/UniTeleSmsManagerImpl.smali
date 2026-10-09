.class public Lcom/android/internal/telephony/UniTeleSmsManagerImpl;
.super Lcom/android/internal/telephony/UniTeleSmsManager;
.source "UniTeleSmsManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UniTeleSmsManagerImpl"


# instance fields
.field private mIsInFdnList:Z

.field private mSmscAddr:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsInFdnList(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;->mIsInFdnList:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmscAddr(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;->mSmscAddr:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsInFdnList(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;->mIsInFdnList:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmscAddr(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;->mSmscAddr:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowFdnDialog(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl;->showFdnDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniTeleSmsManager;-><init>()V

    return-void
.end method

.method private showFdnDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "UniTeleSmsManagerImpl"

    const-string v1, "showFdnDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x80c0048

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$3;-><init>(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$2;-><init>(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public isFdnBlockDisabled(Landroid/content/Context;I)Z
    .locals 4

    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    nop

    const v1, 0x8030018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFdnBlockDisabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniTeleSmsManagerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public sendSmsOnFailFdn(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$1;-><init>(Lcom/android/internal/telephony/UniTeleSmsManagerImpl;Landroid/content/Context;ILjava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Void;

    filled-new-array {v1}, [Ljava/lang/Void;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniTeleSmsManagerImpl$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

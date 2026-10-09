.class public Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;
.super Ljava/lang/Object;
.source "UniTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UniTelephonyManager"

.field private static sInstance:Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;
    .locals 1

    sget-object v0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->sInstance:Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;

    invoke-direct {v0, p0}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->sInstance:Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;

    :cond_0
    sget-object v0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->sInstance:Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;

    return-object v0
.end method

.method private getIUniPhone()Lcom/unisoc/sdk/common/telephony/IUniPhone;
    .locals 1

    const-string v0, "uni_phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/sdk/common/telephony/IUniPhone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unisoc/sdk/common/telephony/IUniPhone;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniTelephonyManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCellLocationForPhone(I)Landroid/telephony/CellLocation;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->getIUniPhone()Lcom/unisoc/sdk/common/telephony/IUniPhone;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/unisoc/sdk/common/telephony/IUniPhone;->getCellLocationForPhone(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    return-object v0

    :catch_1
    move-exception v1

    return-object v0
.end method

.method public isTestUsim(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->getIUniPhone()Lcom/unisoc/sdk/common/telephony/IUniPhone;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/unisoc/sdk/common/telephony/IUniPhone;->isTestUsim(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException ex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unisoc/sdk/common/telephony/UniTelephonyManager;->log(Ljava/lang/String;)V

    nop

    :goto_0
    return v0
.end method

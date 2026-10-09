.class public Lcom/unisoc/phone/UniTelephonyApp;
.super Landroid/app/Application;
.source "UniTelephonyApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTelephonyGlobals:Lcom/unisoc/phone/UniTelephonyGlobals;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisoc/phone/UniTelephonyApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/phone/UniTelephonyApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/unisoc/phone/UniTelephonyApp;->TAG:Ljava/lang/String;

    const-string v1, "Boot Successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/phone/UniTelephonyGlobals;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniTelephonyGlobals;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTelephonyApp;->mTelephonyGlobals:Lcom/unisoc/phone/UniTelephonyGlobals;

    invoke-virtual {v0}, Lcom/unisoc/phone/UniTelephonyGlobals;->onCreate()V

    :cond_0
    return-void
.end method

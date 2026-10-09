.class public Lcom/unisoc/wifi/UniWifiApp;
.super Landroid/app/Application;
.source "UniWifiApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mUniWifiController:Lcom/unisoc/wifi/UniWifiController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unisoc/wifi/UniWifiApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisoc/wifi/UniWifiApp;->TAG:Ljava/lang/String;

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

    sget-object v0, Lcom/unisoc/wifi/UniWifiApp;->TAG:Ljava/lang/String;

    const-string v1, "Boot Successfully!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/unisoc/wifi/UniWifiController;

    invoke-direct {v0, p0}, Lcom/unisoc/wifi/UniWifiController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiApp;->mUniWifiController:Lcom/unisoc/wifi/UniWifiController;

    return-void
.end method

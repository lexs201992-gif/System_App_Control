.class public Lcom/unisoc/sdk/common/telephony/IUniPhone$Default;
.super Ljava/lang/Object;
.source "IUniPhone.java"

# interfaces
.implements Lcom/unisoc/sdk/common/telephony/IUniPhone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisoc/sdk/common/telephony/IUniPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellLocationForPhone(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isTestUsim(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.class public interface abstract Lcom/unisoc/sdk/common/telephony/IUniPhone;
.super Ljava/lang/Object;
.source "IUniPhone.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/sdk/common/telephony/IUniPhone$Stub;,
        Lcom/unisoc/sdk/common/telephony/IUniPhone$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.unisoc.sdk.common.telephony.IUniPhone"


# virtual methods
.method public abstract getCellLocationForPhone(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isTestUsim(ILjava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

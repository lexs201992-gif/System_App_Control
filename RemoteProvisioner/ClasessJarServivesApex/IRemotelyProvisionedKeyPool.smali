.class public interface abstract Lcom/android/rkpdapp/IRemotelyProvisionedKeyPool;
.super Ljava/lang/Object;
.source "IRemotelyProvisionedKeyPool.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/IRemotelyProvisionedKeyPool$Stub;,
        Lcom/android/rkpdapp/IRemotelyProvisionedKeyPool$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "com$android$rkpdapp$IRemotelyProvisionedKeyPool"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/IRemotelyProvisionedKeyPool;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getAttestationKey(ILjava/lang/String;)Lcom/android/rkpdapp/RemotelyProvisionedKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

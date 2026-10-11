.class Lcom/android/ims/internal/ImsCallForwardInfoEx$1;
.super Ljava/lang/Object;
.source "ImsCallForwardInfoEx.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsCallForwardInfoEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/ims/internal/ImsCallForwardInfoEx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ImsCallForwardInfoEx;
    .locals 1

    new-instance v0, Lcom/android/ims/internal/ImsCallForwardInfoEx;

    invoke-direct {v0, p1}, Lcom/android/ims/internal/ImsCallForwardInfoEx;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ImsCallForwardInfoEx$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/internal/ImsCallForwardInfoEx;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/ims/internal/ImsCallForwardInfoEx;
    .locals 1

    new-array v0, p1, [Lcom/android/ims/internal/ImsCallForwardInfoEx;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ImsCallForwardInfoEx$1;->newArray(I)[Lcom/android/ims/internal/ImsCallForwardInfoEx;

    move-result-object p1

    return-object p1
.end method

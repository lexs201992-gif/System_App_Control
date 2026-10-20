.class final Lcom/goodix/fingerprint/GFConfig$1;
.super Ljava/lang/Object;
.source "GFConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/GFConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/goodix/fingerprint/GFConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/goodix/fingerprint/GFConfig;
    .locals 1

    new-instance p0, Lcom/goodix/fingerprint/GFConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/fingerprint/GFConfig;-><init>(Landroid/os/Parcel;Lcom/goodix/fingerprint/GFConfig$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/GFConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/goodix/fingerprint/GFConfig;
    .locals 0

    new-array p0, p1, [Lcom/goodix/fingerprint/GFConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/GFConfig$1;->newArray(I)[Lcom/goodix/fingerprint/GFConfig;

    move-result-object p0

    return-object p0
.end method

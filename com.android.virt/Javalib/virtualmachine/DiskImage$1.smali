.class Landroid/system/virtualizationservice/DiskImage$1;
.super Ljava/lang/Object;
.source "DiskImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualizationservice/DiskImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/system/virtualizationservice/DiskImage;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/DiskImage;
    .locals 1

    new-instance v0, Landroid/system/virtualizationservice/DiskImage;

    invoke-direct {v0}, Landroid/system/virtualizationservice/DiskImage;-><init>()V

    invoke-virtual {v0, p1}, Landroid/system/virtualizationservice/DiskImage;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/DiskImage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/system/virtualizationservice/DiskImage;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/system/virtualizationservice/DiskImage;
    .locals 1

    new-array v0, p1, [Landroid/system/virtualizationservice/DiskImage;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/system/virtualizationservice/DiskImage$1;->newArray(I)[Landroid/system/virtualizationservice/DiskImage;

    move-result-object p1

    return-object p1
.end method

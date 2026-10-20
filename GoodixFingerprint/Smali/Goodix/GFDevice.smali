.class public Lcom/goodix/fingerprint/GFDevice;
.super Ljava/lang/Object;
.source "GFDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/goodix/fingerprint/GFDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mSafeClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/GFDevice$1;

    invoke-direct {v0}, Lcom/goodix/fingerprint/GFDevice$1;-><init>()V

    sput-object v0, Lcom/goodix/fingerprint/GFDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/goodix/fingerprint/GFDevice$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/GFDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/goodix/fingerprint/GFDevice;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    iget p1, p1, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    iput p1, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p0, p0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

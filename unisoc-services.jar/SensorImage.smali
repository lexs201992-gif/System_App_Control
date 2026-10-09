.class public Lcom/fingerprints/extension/engineering/SensorImage;
.super Ljava/lang/Object;
.source "SensorImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;
    }
.end annotation


# instance fields
.field private mBitsPerPixel:Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;

.field private mHeight:I

.field private mPixels:[B

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mBitsPerPixel:Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;

    iput p2, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mWidth:I

    iput p3, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mHeight:I

    iput-object p4, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mPixels:[B

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mBitsPerPixel:Lcom/fingerprints/extension/engineering/SensorImage$BitsPerPixel;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mHeight:I

    return v0
.end method

.method public getPixels()[B
    .locals 1

    iget-object v0, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mPixels:[B

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/fingerprints/extension/engineering/SensorImage;->mWidth:I

    return v0
.end method

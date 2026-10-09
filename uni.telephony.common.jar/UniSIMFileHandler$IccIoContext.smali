.class Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;
.super Ljava/lang/Object;
.source "UniSIMFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniSIMFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccIoContext"
.end annotation


# instance fields
.field mCountRecords:I

.field mEfid:I

.field mLoadAll:Z

.field mOnLoaded:Landroid/os/Message;

.field mPath:Ljava/lang/String;

.field mRecordNum:I

.field mRecordSize:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(IILandroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mRecordNum:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mLoadAll:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mRecordNum:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mLoadAll:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mEfid:I

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mRecordNum:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mLoadAll:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoContext:  mEfid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mEfid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRecordNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mRecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOnLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

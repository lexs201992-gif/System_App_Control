.class Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;
.super Ljava/lang/Object;
.source "UniIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniIccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccIoContext"
.end annotation


# instance fields
.field blacklist mCountRecords:I

.field blacklist mEfid:I

.field blacklist mOnLoaded:Landroid/os/Message;

.field blacklist mPath:Ljava/lang/String;

.field blacklist mRecordNum:I

.field blacklist mRecordSize:I

.field blacklist mWhat:I

.field blacklist results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mWhat:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoContext:  mWhat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRecordNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOnLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

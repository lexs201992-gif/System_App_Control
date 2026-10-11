.class public Lcom/android/internal/telephony/uicc/UniPnnRecord;
.super Ljava/lang/Object;
.source "UniPnnRecord.java"


# static fields
.field static final blacklist TAG_FULL_NETWORK_NAME:I = 0x43

.field static final blacklist TAG_SHORT_NETWORK_NAME:I = 0x45


# instance fields
.field private blacklist mPnnLongName:Ljava/lang/String;

.field private blacklist mPnnShortName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/uicc/UniSimTlv;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/UniSimTlv;-><init>([BII)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getTag()I

    move-result v1

    const/16 v3, 0x43

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnLongName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getTag()I

    move-result v1

    const/16 v3, 0x45

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnShortName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->nextObject()Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getLongName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnLongName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnShortName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PnnLongName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PnnShortName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniPnnRecord;->mPnnShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

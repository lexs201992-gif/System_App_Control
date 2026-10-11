.class public Lcom/android/internal/telephony/uicc/UniIccFileNotFound;
.super Lcom/android/internal/telephony/uicc/UniIccException;
.source "UniIccFileNotFound.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccException;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICC EF Not Found 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniIccException;-><init>(Ljava/lang/String;)V

    return-void
.end method

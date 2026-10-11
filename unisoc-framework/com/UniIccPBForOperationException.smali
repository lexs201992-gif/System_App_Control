.class public Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;
.super Ljava/lang/RuntimeException;
.source "UniIccPBForOperationException.java"


# static fields
.field public static final blacklist AAS_CAPACITY_FULL:I = -0xc

.field public static final blacklist ADN_CAPACITY_FULL:I = -0x3

.field public static final blacklist ANR_CAPACITY_FULL:I = -0x9

.field public static final blacklist EMAIL_CAPACITY_FULL:I = -0x2

.field public static final blacklist GROUP_CAPACITY_FULL:I = -0x8

.field public static final blacklist GRP_RECORD_MAX_LENGTH:I = -0xa

.field public static final blacklist LOAD_ADN_FAIL:I = -0x6

.field public static final blacklist OVER_AAS_MAX_LENGTH:I = -0xb

.field public static final blacklist OVER_ANR_MAX_LENGTH:I = -0xd

.field public static final blacklist OVER_GROUP_NAME_MAX_LENGTH:I = -0x7

.field public static final blacklist OVER_NAME_MAX_LENGTH:I = -0x4

.field public static final blacklist OVER_NUMBER_MAX_LENGTH:I = -0x5

.field public static final blacklist WRITE_OPREATION_FAILED:I = -0x1


# instance fields
.field public blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    return-void
.end method

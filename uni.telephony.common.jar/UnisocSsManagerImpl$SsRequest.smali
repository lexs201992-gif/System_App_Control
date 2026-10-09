.class public Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;
.super Ljava/lang/Object;
.source "UnisocSsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UnisocSsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SsRequest"
.end annotation


# instance fields
.field mCfAction:I

.field mCfReason:I

.field mDialingNumber:Ljava/lang/String;

.field public mOnComplete:Landroid/os/Message;

.field mPhoneId:I

.field mRuleset:Ljava/lang/String;

.field mServiceClass:I

.field mTimerSeconds:I


# direct methods
.method constructor <init>(IIILjava/lang/String;IILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    iput p2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mCfAction:I

    iput p3, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mCfReason:I

    iput-object p4, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mDialingNumber:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mServiceClass:I

    iput p6, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mTimerSeconds:I

    iput-object p7, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mRuleset:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    iput p2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mCfReason:I

    iput p3, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mServiceClass:I

    iput-object p4, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mRuleset:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mOnComplete:Landroid/os/Message;

    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    iput-object p2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mOnComplete:Landroid/os/Message;

    return-void
.end method

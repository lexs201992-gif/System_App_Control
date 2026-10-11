.class public Lcom/android/internal/telephony/MobileNetworkUtils$RadioAccessFamily;
.super Ljava/lang/Object;
.source "MobileNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioAccessFamily"
.end annotation


# static fields
.field public static final blacklist CDMA:I = 0x48

.field public static final blacklist EVDO:I = 0x2830

.field public static final blacklist GSM:I = 0x8003

.field public static final blacklist HS:I = 0x4380

.field public static final blacklist LTE:I = 0x41000

.field public static final blacklist NR:I = 0x80000

.field public static final blacklist RAF_1xRTT:I = 0x40

.field public static final blacklist RAF_EDGE:I = 0x2

.field public static final blacklist RAF_EHRPD:I = 0x2000

.field public static final blacklist RAF_EVDO_0:I = 0x10

.field public static final blacklist RAF_EVDO_A:I = 0x20

.field public static final blacklist RAF_EVDO_B:I = 0x800

.field public static final blacklist RAF_GPRS:I = 0x1

.field public static final blacklist RAF_GSM:I = 0x8000

.field public static final blacklist RAF_HSDPA:I = 0x80

.field public static final blacklist RAF_HSPA:I = 0x200

.field public static final blacklist RAF_HSPAP:I = 0x4000

.field public static final blacklist RAF_HSUPA:I = 0x100

.field public static final blacklist RAF_IS95A:I = 0x8

.field public static final blacklist RAF_IS95B:I = 0x8

.field public static final blacklist RAF_LTE:I = 0x1000

.field public static final blacklist RAF_LTE_CA:I = 0x40000

.field public static final blacklist RAF_NR:I = 0x80000

.field public static final blacklist RAF_TD_SCDMA:I = 0x10000

.field public static final blacklist RAF_UMTS:I = 0x4

.field public static final blacklist RAF_UNKNOWN:I = 0x0

.field public static final blacklist WCDMA:I = 0x4384


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

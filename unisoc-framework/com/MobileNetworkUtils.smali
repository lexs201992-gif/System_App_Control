.class public Lcom/android/internal/telephony/MobileNetworkUtils;
.super Ljava/lang/Object;
.source "MobileNetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MobileNetworkUtils$RadioAccessFamily;,
        Lcom/android/internal/telephony/MobileNetworkUtils$TelephonyManagerConstants;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getRafFromNetworkType(I)J
    .locals 2

    const-wide/32 v0, 0xc387

    sparse-switch p0, :sswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :sswitch_0
    const-wide/32 v0, 0xc5384

    return-wide v0

    :sswitch_1
    const-wide/32 v0, 0xcd387

    return-wide v0

    :sswitch_2
    const-wide/32 v0, 0xc1000

    return-wide v0

    :sswitch_3
    const-wide/32 v0, 0x80000

    return-wide v0

    :sswitch_4
    const-wide/32 v0, 0x45384

    return-wide v0

    :sswitch_5
    const-wide/32 v0, 0x41000

    return-wide v0

    :sswitch_6
    const-wide/32 v0, 0x4d387

    return-wide v0

    :sswitch_7
    return-wide v0

    :sswitch_8
    const-wide/16 v0, 0x4384

    return-wide v0

    :sswitch_9
    const-wide/32 v0, 0x8003

    return-wide v0

    :sswitch_a
    return-wide v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_9
        0x2 -> :sswitch_8
        0x3 -> :sswitch_7
        0x9 -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

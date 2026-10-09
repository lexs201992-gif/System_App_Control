.class public final Lcom/android/ipsec/flags/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field public static final blacklist FLAG_DPD_DISABLE_API:Ljava/lang/String; = "com.android.ipsec.flags.dpd_disable_api"

.field public static final blacklist FLAG_DUMPSYS_API:Ljava/lang/String; = "com.android.ipsec.flags.dumpsys_api"

.field public static final blacklist FLAG_ENABLED_IKE_OPTIONS_API:Ljava/lang/String; = "com.android.ipsec.flags.enabled_ike_options_api"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dpdDisableApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist dumpsysApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist enabledIkeOptionsApi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

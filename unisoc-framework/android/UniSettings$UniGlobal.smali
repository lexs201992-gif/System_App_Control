.class public final Landroid/telephony/UniSettings$UniGlobal;
.super Ljava/lang/Object;
.source "UniSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UniSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UniGlobal"
.end annotation


# static fields
.field public static final blacklist MOBILE_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "mobile_icc_operator_numeric"

.field public static final blacklist NEED_READ_NV_CODE:Ljava/lang/String; = "need_read_nv_code"

.field public static final blacklist RESTRICT_NETWORK_TYPE:Ljava/lang/String; = "restrict_network_type"

.field public static final blacklist SPECIAL_SIM_CARD_NAME:Ljava/lang/String; = "special_sim_card_name"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

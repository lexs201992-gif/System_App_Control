.class public Lcom/goodix/fingerprint/utils/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"


# static fields
.field private static final FP_ERROR_VIBRATE_PATTERN:[J

.field private static final FP_SUCCESS_VIBRATE_PATTERN:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/goodix/fingerprint/utils/FingerprintUtils;->FP_ERROR_VIBRATE_PATTERN:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/goodix/fingerprint/utils/FingerprintUtils;->FP_SUCCESS_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method public static vibrateFingerprintError(Landroid/content/Context;)V
    .locals 2

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/goodix/fingerprint/utils/FingerprintUtils;->FP_ERROR_VIBRATE_PATTERN:[J

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method public static vibrateFingerprintSuccess(Landroid/content/Context;)V
    .locals 2

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/goodix/fingerprint/utils/FingerprintUtils;->FP_SUCCESS_VIBRATE_PATTERN:[J

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

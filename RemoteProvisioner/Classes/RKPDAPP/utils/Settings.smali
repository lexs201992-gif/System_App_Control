.class public Lcom/android/rkpdapp/utils/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field public static final EXPIRING_BY_MS_DEFAULT:I = 0xf731400

.field public static final EXTRA_SIGNED_KEYS_AVAILABLE_DEFAULT:I = 0x6

.field public static final FAILURE_DATA_USAGE_MAX:I = 0x100000

.field public static final FAILURE_DATA_USAGE_WINDOW:Ljava/time/Duration;

.field public static final ID_UPPER_BOUND:I = 0xf4240

.field private static final KEY_EXPIRING_BY:Ljava/lang/String; = "expiring_by"

.field private static final KEY_EXTRA_KEYS:Ljava/lang/String; = "extra_keys"

.field private static final KEY_FAILURE_BYTES:Ljava/lang/String; = "failure_data"

.field private static final KEY_FAILURE_COUNTER:Ljava/lang/String; = "failure_counter"

.field private static final KEY_FAILURE_DATA_WINDOW_START_TIME:Ljava/lang/String; = "failure_start_time"

.field private static final KEY_ID:Ljava/lang/String; = "settings_id"

.field private static final KEY_MAX_REQUEST_TIME:Ljava/lang/String; = "max_request_time"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field public static final MAX_REQUEST_TIME_MS_DEFAULT:I = 0x4e20

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "com.android.rkpdapp.utils.preferences"

.field private static final TAG:Ljava/lang/String; = "RkpdSettings"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/utils/Settings;->FAILURE_DATA_USAGE_WINDOW:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFailureCounter(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "failure_counter"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static clearPreferences(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static consumeErrDataBudget(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "failure_data"

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RkpdSettings"

    const-string p1, "Overflow on number of bytes sent over the network."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7fffffff

    :goto_0
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static generateAndSetId(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "settings_id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "RkpdSettings"

    const-string v2, "Setting ID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const v2, 0xf4240

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getDefaultUrl()Ljava/lang/String;
    .locals 5

    const-string v0, "remote_provisioning.hostname"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v3, "https"

    const-string v4, "v1"

    invoke-direct {v1, v3, v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to construct URL for hostname \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RkpdSettings"

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static getErrDataBudgetConsumed(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "failure_data"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getExpirationTime(Landroid/content/Context;)Ljava/time/Instant;
    .locals 3

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getExpiringBy(Landroid/content/Context;)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method

.method public static getExpiringBy(Landroid/content/Context;)Ljava/time/Duration;
    .locals 3

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "expiring_by"

    const-wide/32 v1, 0xf731400

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static getExtraSignedKeysAvailable(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "extra_keys"

    const/4 v1, 0x6

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getFailureCounter(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "failure_counter"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-string v1, "settings_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMaxRequestTime(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "max_request_time"

    const/16 v1, 0x4e20

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    const-string v0, "com.android.rkpdapp.utils.preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "url"

    invoke-static {}, Lcom/android/rkpdapp/utils/Settings;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasErrDataBudget(Landroid/content/Context;Ljava/time/Instant;)Z
    .locals 7

    if-nez p1, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p1

    :cond_0
    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v0, 0x0

    const-string v2, "failure_start_time"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    sget-object v1, Lcom/android/rkpdapp/utils/Settings;->FAILURE_DATA_USAGE_WINDOW:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    const/4 v1, 0x1

    const-string v3, "failure_data"

    const/4 v4, 0x0

    if-lez v0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    invoke-interface {p0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1

    :cond_1
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/high16 p1, 0x100000

    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    return v1
.end method

.method public static incrementFailureCounter(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "failure_counter"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p0
.end method

.method public static resetDefaultConfig(Landroid/content/Context;)V
    .locals 3

    const-wide/32 v0, 0xf731400

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-static {}, Lcom/android/rkpdapp/utils/Settings;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p0, v2, v0, v1}, Lcom/android/rkpdapp/utils/Settings;->setDeviceConfig(Landroid/content/Context;ILjava/time/Duration;Ljava/lang/String;)Z

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->clearFailureCounter(Landroid/content/Context;)V

    const/16 v0, 0x4e20

    invoke-static {p0, v0}, Lcom/android/rkpdapp/utils/Settings;->setMaxRequestTime(Landroid/content/Context;I)V

    return-void
.end method

.method public static setDeviceConfig(Landroid/content/Context;ILjava/time/Duration;Ljava/lang/String;)Z
    .locals 7

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, -0x5

    const-string v3, "extra_keys"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-wide/16 v3, -0x1

    const-string v1, "expiring_by"

    invoke-interface {p0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide p1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move p1, v2

    :cond_1
    if-eqz p3, :cond_2

    const-string p2, ""

    const-string v1, "url"

    invoke-interface {p0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    if-eqz v2, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    return v2
.end method

.method public static setMaxRequestTime(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/16 v0, 0x4e20

    const-string v1, "max_request_time"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.class public Lcom/android/rkpdapp/interfaces/ServerInterface;
.super Ljava/lang/Object;
.source "ServerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkDataBudget(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/rkpdapp/utils/Settings;->hasErrDataBudget(Landroid/content/Context;Ljava/time/Instant;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->OUT_OF_ERROR_BUDGET:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    iget-object v0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/rkpdapp/utils/Settings;->getErrDataBudgetConsumed(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of data budget due to repeated errors. Consumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->makeNetworkError(Ljava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/RkpdException;

    move-result-object p0

    throw p0
.end method

.method private connectAndGetData(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;[BLcom/android/rkpdapp/interfaces/ServerInterface$Operation;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    const-string v1, "RkpdServerInterface"

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    const/16 v2, 0x64

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->checkDataBudget(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting data from server. Attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/rkpdapp/utils/Settings;->getUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, p3}, Lcom/android/rkpdapp/interfaces/ServerInterface;->requestData(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/net/URL;[B)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->close()V

    return-object p0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Lcom/android/rkpdapp/RkpdException;->getErrorCode()Lcom/android/rkpdapp/RkpdException$ErrorCode;

    move-result-object v5

    sget-object v6, Lcom/android/rkpdapp/RkpdException$ErrorCode;->DEVICE_NOT_REGISTERED:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    if-eq v5, v6, :cond_1

    invoke-virtual {p4}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->getHttpErrorStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    invoke-virtual {v4}, Lcom/android/rkpdapp/RkpdException;->getErrorCode()Lcom/android/rkpdapp/RkpdException$ErrorCode;

    move-result-object v5

    sget-object v6, Lcom/android/rkpdapp/RkpdException$ErrorCode;->HTTP_CLIENT_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    throw v4

    :cond_1
    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_DEVICE_NOT_REGISTERED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    throw v4

    :catch_1
    move-exception v4

    invoke-virtual {p4}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->getIoExceptionStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to complete request from server."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {p4}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->getTimedOutStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server timed out. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v4

    iget-object v5, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/rkpdapp/utils/Settings;->getMaxRequestTime(Landroid/content/Context;)I

    move-result v5

    if-gt v4, v5, :cond_2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->close()V

    iget-object p2, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/rkpdapp/utils/Settings;->incrementFailureCounter(Landroid/content/Context;)I

    const-string p2, "Error getting data from server."

    invoke-direct {p0, p2, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->makeNetworkError(Ljava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/RkpdException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private generateAndLogRequestId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request_id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RkpdServerInterface"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static getCharsetFromContentTypeHeader(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 4

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const-string v1, "RkpdServerInterface"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Simple content type; defaulting to ASCII"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object p0

    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    if-ne v3, v2, :cond_2

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const-string v3, "charset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/String;->strip()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported charset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; defaulting to ASCII"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "The charset is missing from content-type, defaulting to ASCII"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method private makeNetworkError(Ljava/lang/String;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/RkpdException;
    .locals 1

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p2, Lcom/android/rkpdapp/RkpdException$ErrorCode;->NETWORK_COMMUNICATION_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    invoke-direct {p0, p2, p1}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_NETWORK_CONNECTIVITY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p2, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p2, Lcom/android/rkpdapp/RkpdException$ErrorCode;->NO_NETWORK_CONNECTIVITY:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    invoke-direct {p0, p2, p1}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    return-object p0
.end method

.method public static readErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected content type from the server: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    const-string v1, "No error data returned by server."

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-gtz p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {v2, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0}, Lcom/android/rkpdapp/interfaces/ServerInterface;->getCharsetFromContentTypeHeader(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading error string from server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestData(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/net/URL;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->startServerWait()Lcom/android/rkpdapp/utils/StopWatch;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    array-length v4, p3

    invoke-virtual {v3, p3, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    array-length p3, p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/2addr p3, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setHttpStatusError(I)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v3, 0xc8

    const-string v4, "RkpdServerInterface"

    if-ne p1, v3, :cond_1

    :try_start_4
    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->stop()V

    iget-object p1, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/rkpdapp/utils/Settings;->clearFailureCounter(Landroid/content/Context;)V

    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    :goto_0
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {p2, v3, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr p3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->close()V

    const-string p1, "Network request completed successfully."

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move v0, p3

    goto :goto_4

    :cond_1
    :try_start_6
    iget-object p1, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/rkpdapp/utils/Settings;->incrementFailureCounter(Landroid/content/Context;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server connection failed for url: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", response code: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nRepeated failure count: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/rkpdapp/interfaces/ServerInterface;->readErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Lcom/android/rkpdapp/RkpdException;->createFromHttpError(I)Lcom/android/rkpdapp/RkpdException;

    move-result-object p1

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p1

    move v0, p3

    goto :goto_2

    :catchall_1
    move-exception p1

    if-eqz v3, :cond_2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    :goto_2
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    :goto_4
    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/rkpdapp/utils/Settings;->consumeErrDataBudget(Landroid/content/Context;I)V

    throw p1
.end method


# virtual methods
.method public fetchGeek(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/GeekResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/rkpdapp/utils/CborUtils;->buildProvisioningInfo(Landroid/content/Context;)[B

    move-result-object v0

    const-string v1, ":fetchEekChain"

    sget-object v2, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/rkpdapp/interfaces/ServerInterface;->connectAndGetData(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;[BLcom/android/rkpdapp/interfaces/ServerInterface$Operation;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/rkpdapp/utils/CborUtils;->parseGeekResponse([B)Lcom/android/rkpdapp/GeekResponse;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p1, Lcom/android/rkpdapp/RkpdException$ErrorCode;->HTTP_SERVER_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string v0, "Response failed to parse."

    invoke-direct {p0, p1, v0}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p0
.end method

.method public fetchGeekAndUpdate(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/GeekResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->fetchGeek(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/GeekResponse;

    move-result-object p1

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/ServerInterface;->mContext:Landroid/content/Context;

    iget v0, p1, Lcom/android/rkpdapp/GeekResponse;->numExtraAttestationKeys:I

    iget-object v1, p1, Lcom/android/rkpdapp/GeekResponse;->timeToRefresh:Ljava/time/Duration;

    iget-object v2, p1, Lcom/android/rkpdapp/GeekResponse;->provisioningUrl:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/android/rkpdapp/utils/Settings;->setDeviceConfig(Landroid/content/Context;ILjava/time/Duration;Ljava/lang/String;)Z

    return-object p1
.end method

.method public requestSignedCertificates([B[BLcom/android/rkpdapp/metrics/ProvisioningAttempt;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Lcom/android/rkpdapp/metrics/ProvisioningAttempt;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":signCertificates?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/rkpdapp/interfaces/ServerInterface;->generateAndLogRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/CharSequence;

    move-result-object p2

    const-string v1, "&"

    invoke-static {v1, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-direct {p0, p3, p2, p1, v0}, Lcom/android/rkpdapp/interfaces/ServerInterface;->connectAndGetData(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;[BLcom/android/rkpdapp/interfaces/ServerInterface$Operation;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/rkpdapp/utils/CborUtils;->parseSignedCertificates([B)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setCertChainLength(I)V

    const-string p1, ""

    invoke-virtual {p3, p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setRootCertFingerprint(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lcom/android/rkpdapp/utils/X509Utils;->formatX509Certs([B)[Ljava/security/cert/X509Certificate;

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p3, v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setCertChainLength(I)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setRootCertFingerprint(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/rkpdapp/RkpdException;

    sget-object p2, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string p3, "Algorithm not found"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERNAL_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p3, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p1, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string p2, "Response failed to parse."

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p0
.end method

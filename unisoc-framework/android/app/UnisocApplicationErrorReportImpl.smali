.class public Landroid/app/UnisocApplicationErrorReportImpl;
.super Landroid/app/UnisocApplicationErrorReport;
.source "UnisocApplicationErrorReportImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UnisocApplicationErrorReport"

.field private static blacklist buf:Ljava/io/BufferedReader;

.field private static blacklist is:Ljava/io/InputStream;

.field private static blacklist proc:Ljava/lang/Process;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/app/UnisocApplicationErrorReportImpl;->proc:Ljava/lang/Process;

    sput-object v0, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    sput-object v0, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/UnisocApplicationErrorReport;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMapsInfo(I)V
    .locals 8

    const-string v0, "Fail to destroy resource as catch the Exception e: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat /proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the memory maps of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnisocApplicationErrorReport"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    sput-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->proc:Ljava/lang/Process;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    sput-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    :goto_0
    sget-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    if-eqz v5, :cond_0

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_1
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_2
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->proc:Ljava/lang/Process;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {v4, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v5, "Fail to get memory maps:"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_5
    sget-object v3, Landroid/app/UnisocApplicationErrorReportImpl;->proc:Ljava/lang/Process;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    :try_start_4
    sget-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->buf:Ljava/io/BufferedReader;

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_6
    sget-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->is:Ljava/io/InputStream;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_7
    sget-object v5, Landroid/app/UnisocApplicationErrorReportImpl;->proc:Ljava/lang/Process;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    goto :goto_4

    :catch_2
    move-exception v5

    invoke-static {v4, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    throw v3
.end method

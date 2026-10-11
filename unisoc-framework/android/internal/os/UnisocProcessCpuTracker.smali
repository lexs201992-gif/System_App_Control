.class public Lcom/android/internal/os/UnisocProcessCpuTracker;
.super Lcom/android/internal/os/ProcessCpuTracker;
.source "UnisocProcessCpuTracker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTracker"


# direct methods
.method public constructor blacklist <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public blacklist isCpuUsageHighInSystem()Z
    .locals 14

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastUserTime()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastSystemTime()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastIoWaitTime()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastIrqTime()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/os/UnisocProcessCpuTracker;->getLastIdleTime()I

    move-result v5

    add-int v6, v0, v1

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    move v6, v8

    mul-int/lit8 v8, v0, 0x64

    div-int/2addr v8, v6

    int-to-long v8, v8

    mul-int/lit8 v10, v1, 0x64

    div-int/2addr v10, v6

    int-to-long v10, v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_1

    const-wide/16 v12, 0x28

    cmp-long v12, v10, v12

    if-ltz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "system is busy! userUsage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", systemUsage: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ProcessCpuTracker"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const/4 v7, 0x0

    return v7
.end method

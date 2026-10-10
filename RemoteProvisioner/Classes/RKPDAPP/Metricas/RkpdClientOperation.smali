.class public final Lcom/android/rkpdapp/metrics/RkpdClientOperation;
.super Ljava/lang/Object;
.source "RkpdClientOperation.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;
    }
.end annotation


# instance fields
.field private final mClientUid:I

.field private final mOperationId:I

.field private final mRemotelyProvisionedComponent:Ljava/lang/String;

.field private mResult:I

.field private final mTimer:Lcom/android/rkpdapp/utils/StopWatch;


# direct methods
.method private constructor <init>(ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/rkpdapp/utils/StopWatch;

    const-string v1, "com.android.rkpdapp"

    invoke-direct {v0, v1}, Lcom/android/rkpdapp/utils/StopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mTimer:Lcom/android/rkpdapp/utils/StopWatch;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mResult:I

    iput p1, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mClientUid:I

    iput-object p2, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mRemotelyProvisionedComponent:Ljava/lang/String;

    iput p3, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mOperationId:I

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->start()V

    return-void
.end method

.method public static cancelGetKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;
    .locals 2

    new-instance v0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public static getKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;
    .locals 2

    new-instance v0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public static getRegistration(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;
    .locals 2

    new-instance v0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method

.method public static storeUpgradedKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;
    .locals 2

    new-instance v0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;-><init>(ILjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 7

    iget-object v0, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {v0}, Lcom/android/rkpdapp/utils/StopWatch;->stop()V

    const/16 v1, 0x299

    iget-object v2, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mRemotelyProvisionedComponent:Ljava/lang/String;

    iget v3, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mClientUid:I

    iget v4, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mOperationId:I

    iget v5, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mResult:I

    iget-object p0, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mTimer:Lcom/android/rkpdapp/utils/StopWatch;

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/rkpdapp/metrics/RkpdStatsLog;->write(ILjava/lang/String;IIII)V

    return-void
.end method

.method public setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->getAtomValue()I

    move-result p1

    iput p1, p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->mResult:I

    return-void
.end method

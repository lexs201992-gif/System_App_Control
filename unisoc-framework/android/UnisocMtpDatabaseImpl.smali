.class public Landroid/mtp/UnisocMtpDatabaseImpl;
.super Landroid/mtp/UnisocMtpDatabase;
.source "UnisocMtpDatabaseImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/UnisocMtpDatabaseImpl$InstanceUnisocMtpDatabaseImpl;,
        Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;
    }
.end annotation


# instance fields
.field private blacklist isAlive:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist scanThread:Ljava/lang/Thread;

.field private blacklist updateMediaQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/mtp/UnisocMtpDatabaseImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetupdateMediaQueue(Landroid/mtp/UnisocMtpDatabaseImpl;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->updateMediaQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputisAlive(Landroid/mtp/UnisocMtpDatabaseImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->isAlive:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/mtp/UnisocMtpDatabase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->isAlive:Z

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/mtp/UnisocMtpDatabaseImpl;
    .locals 2

    const-class v0, Landroid/mtp/UnisocMtpDatabaseImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/mtp/UnisocMtpDatabaseImpl$InstanceUnisocMtpDatabaseImpl;->-$$Nest$sfgetINSTANCE()Landroid/mtp/UnisocMtpDatabaseImpl;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist addFile(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->updateMediaQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist initUpdateMediaThread(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->updateMediaQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->updateMediaQueue:Ljava/util/Queue;

    :cond_0
    iget-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->scanThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->isAlive:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;

    invoke-direct {v1, p0}, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;-><init>(Landroid/mtp/UnisocMtpDatabaseImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl;->scanThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

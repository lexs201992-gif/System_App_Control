.class Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;
.super Ljava/lang/Object;
.source "UnisocMtpDatabaseImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/UnisocMtpDatabaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/mtp/UnisocMtpDatabaseImpl;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/UnisocMtpDatabaseImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    iget-object v0, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fputisAlive(Landroid/mtp/UnisocMtpDatabaseImpl;Z)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    iget-object v1, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-static {v1}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fgetupdateMediaQueue(Landroid/mtp/UnisocMtpDatabaseImpl;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fputisAlive(Landroid/mtp/UnisocMtpDatabaseImpl;Z)V

    return-void

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-static {v1}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fgetupdateMediaQueue(Landroid/mtp/UnisocMtpDatabaseImpl;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-static {v1}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fgetmContext(Landroid/mtp/UnisocMtpDatabaseImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroid/mtp/UnisocMtpDatabaseImpl$ScanThread;->this$0:Landroid/mtp/UnisocMtpDatabaseImpl;

    invoke-static {v2}, Landroid/mtp/UnisocMtpDatabaseImpl;->-$$Nest$fgetupdateMediaQueue(Landroid/mtp/UnisocMtpDatabaseImpl;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v1, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    const/4 v0, 0x0

    goto :goto_0
.end method

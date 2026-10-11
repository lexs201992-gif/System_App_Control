.class Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "SimStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferApnChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SimStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimStateTracker;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SimStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "name"

    const-string v3, "apn"

    const-string v4, "_id"

    filled-new-array {v4, v1, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name ASC"

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception on query: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    nop

    return-void
.end method

.class final Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SystemListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/systemevent/SystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SystemNotificationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unipnp/server/systemevent/SystemListener;


# direct methods
.method public constructor <init>(Lcom/unipnp/server/systemevent/SystemListener;)V
    .locals 3

    iput-object p1, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmContext(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmContext(Lcom/unipnp/server/systemevent/SystemListener;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-super {p0, v0, v1, p1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register notification listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isNoClearable(Landroid/app/Notification;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/app/Notification;->priority:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;->isNoClearable(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uid"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "isClearAble"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unievent_notificaion_post"

    invoke-static {v6, v5, v4}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v5

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification Posted data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/unipnp/parcel/UniEventData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v6}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;->isNoClearable(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uid"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "isClearAble"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unievent_notificaion_remove"

    invoke-static {v6, v5, v4}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v5

    invoke-static {}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification Removed data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/unipnp/parcel/UniEventData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unipnp/server/systemevent/SystemListener$SystemNotificationListener;->this$0:Lcom/unipnp/server/systemevent/SystemListener;

    invoke-static {v6}, Lcom/unipnp/server/systemevent/SystemListener;->-$$Nest$fgetmEventManager(Lcom/unipnp/server/systemevent/SystemListener;)Lcom/unipnp/server/EventManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    return-void
.end method

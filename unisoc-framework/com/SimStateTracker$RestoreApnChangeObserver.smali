.class Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "SimStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnChangeObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimStateTracker;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SimStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimStateTracker;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    const-string v1, "Apn Restore Callback"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

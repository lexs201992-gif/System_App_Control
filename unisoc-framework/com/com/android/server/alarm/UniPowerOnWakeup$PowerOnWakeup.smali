.class Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;
.super Ljava/lang/Object;
.source "UniPowerOnWakeup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/UniPowerOnWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOnWakeup"
.end annotation


# instance fields
.field blacklist operation:Landroid/app/PendingIntent;

.field final synthetic blacklist this$0:Lcom/android/server/alarm/UniPowerOnWakeup;

.field blacklist triggerAtTime:J


# direct methods
.method constructor blacklist <init>(Lcom/android/server/alarm/UniPowerOnWakeup;JLandroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->this$0:Lcom/android/server/alarm/UniPowerOnWakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->triggerAtTime:J

    iput-object p4, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method blacklist equals(Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerOnWakeup equals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnisocAlarmManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method blacklist shouldRemove(Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerOnWakeup shouldRemove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnisocAlarmManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerOnWakeup{pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->triggerAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

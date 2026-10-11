.class public Landroid/app/AlarmManagerWrapper;
.super Ljava/lang/Object;
.source "AlarmManagerWrapper.java"


# annotations
.annotation runtime Landroid/annotation/UnisocHiddenApi;
.end annotation


# static fields
.field static final blacklist EARLY_START_TIME:I = 0x1d4c0

.field static final blacklist TAG:Ljava/lang/String; = "AlarmManagerWrapper"

.field static blacklist mUniPowerOnWakeup:Lcom/android/server/alarm/UniPowerOnWakeup;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/alarm/UniPowerOnWakeup;

    invoke-direct {v0}, Lcom/android/server/alarm/UniPowerOnWakeup;-><init>()V

    sput-object v0, Landroid/app/AlarmManagerWrapper;->mUniPowerOnWakeup:Lcom/android/server/alarm/UniPowerOnWakeup;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Landroid/app/AlarmManagerWrapper;->mUniPowerOnWakeup:Lcom/android/server/alarm/UniPowerOnWakeup;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/alarm/UniPowerOnWakeup;->setPowerOnToRtc(JLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static blacklist setPowerOffAlarm(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerOffAlarm : triggerAtMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,operation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/AlarmManagerWrapper;->mUniPowerOnWakeup:Lcom/android/server/alarm/UniPowerOnWakeup;

    const-wide/32 v1, 0x1d4c0

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/alarm/UniPowerOnWakeup;->setPowerOnToRtc(JLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static blacklist setPowerOffWakeup(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerOffWakeup : triggerAtMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,operation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static blacklist setPowerOnWakeup(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPowerOnWakeup : triggerAtMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,operation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/app/AlarmManagerWrapper;->mUniPowerOnWakeup:Lcom/android/server/alarm/UniPowerOnWakeup;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/alarm/UniPowerOnWakeup;->setPowerOnToRtc(JLandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

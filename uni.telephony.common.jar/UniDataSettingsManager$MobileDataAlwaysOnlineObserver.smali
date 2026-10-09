.class public Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;
.super Landroid/database/ContentObserver;
.source "UniDataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/UniDataSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileDataAlwaysOnlineObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/data/UniDataSettingsManager;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "mobile_data_always_online"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    move v0, v3

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange: alwaysOnline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataSettingsManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmAlwaysOnline(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z

    move-result v2

    if-eq v2, v0, :cond_3

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$mcancelAlarmForDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fputmDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmIsScreenOn(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmCharging(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$mstartAlarmForDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fputmAlwaysOnline(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V

    :cond_3
    return-void
.end method

.method public register(I)V
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const-string v1, "mobile_data_always_online"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;->this$0:Lcom/android/internal/telephony/data/UniDataSettingsManager;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

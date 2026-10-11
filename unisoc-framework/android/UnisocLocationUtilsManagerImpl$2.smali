.class Landroid/location/UnisocLocationUtilsManagerImpl$2;
.super Landroid/telephony/PhoneStateListener;
.source "UnisocLocationUtilsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;->registerPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/UnisocLocationUtilsManagerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v0}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fputmCallEndElapsedRealtimeMillis(Landroid/location/UnisocLocationUtilsManagerImpl;J)V

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fputmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v0, p2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$misCarrierMatched(Landroid/location/UnisocLocationUtilsManagerImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fputmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;Z)V

    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInEmergencyCall : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/UnisocLocationUtilsManagerImpl$2;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

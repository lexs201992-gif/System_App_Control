.class Landroid/location/UnisocLocationUtilsManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UnisocLocationUtilsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;
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

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$1;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive broadcast intent, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    goto :goto_0

    :pswitch_0
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$1;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v1, p2}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$mcarrierConfigChanged(Landroid/location/UnisocLocationUtilsManagerImpl;Landroid/content/Intent;)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x43dd7a3f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

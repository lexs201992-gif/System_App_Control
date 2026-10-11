.class Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;
.super Landroid/os/Handler;
.source "UnisocLocationUtilsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/UnisocLocationUtilsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/UnisocLocationUtilsManagerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/location/UnisocLocationUtilsManagerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v1}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$fgetmContext(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;->this$0:Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-static {v0}, Landroid/location/UnisocLocationUtilsManagerImpl;->-$$Nest$monGpsTimeChanged(Landroid/location/UnisocLocationUtilsManagerImpl;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

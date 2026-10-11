.class Landroid/telephony/ModemStatusTrackerImpl$1;
.super Ljava/lang/Object;
.source "ModemStatusTrackerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ModemStatusTrackerImpl;->addRadioInteractorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ModemStatusTrackerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ModemStatusTrackerImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "ModemStatusTrackerImpl"

    const-string v1, "listen modem status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v2}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fgetmContext(Landroid/telephony/ModemStatusTrackerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fputmRadioInteractor(Landroid/telephony/ModemStatusTrackerImpl;Lcom/android/unisoc/telephony/RadioInteractor;)V

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$mgetRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fputmRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;Lcom/android/unisoc/telephony/RadioInteractorListener;)V

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v0}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fgetmRadioInteractor(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v2}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fgetmRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "ModemStatusTrackerImpl"

    const-string v1, "listen none"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v0}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fgetmRadioInteractor(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ModemStatusTrackerImpl$1;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v1}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$fgetmRadioInteractorListener(Landroid/telephony/ModemStatusTrackerImpl;)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;I)V

    return-void
.end method

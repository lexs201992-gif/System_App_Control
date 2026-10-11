.class Landroid/telephony/ModemStatusTrackerImpl$2;
.super Lcom/android/unisoc/telephony/RadioInteractorListener;
.source "ModemStatusTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ModemStatusTrackerImpl;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ModemStatusTrackerImpl;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ModemStatusTrackerImpl;I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ModemStatusTrackerImpl$2;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/RadioInteractorListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist onModemStateChangedEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModemStateChangedEvent: modemStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ModemStatusTrackerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/ModemStatusTrackerImpl$2;->this$0:Landroid/telephony/ModemStatusTrackerImpl;

    invoke-static {v1, v0}, Landroid/telephony/ModemStatusTrackerImpl;->-$$Nest$mnotifyModemStatusChanged(Landroid/telephony/ModemStatusTrackerImpl;I)V

    return-void
.end method

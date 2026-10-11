.class Lcom/android/internal/telephony/simlock/MtnSimLockController$2;
.super Lcom/android/unisoc/telephony/RadioInteractorListener;
.source "MtnSimLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/simlock/MtnSimLockController;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

.field final synthetic blacklist val$phoneId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/simlock/MtnSimLockController;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    iput p3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->val$phoneId:I

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/RadioInteractorListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist onExpireSimEvent(Ljava/lang/Object;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExpireSimEvent phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expire sim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmExpiredSim(Lcom/android/internal/telephony/simlock/MtnSimLockController;)[Z

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fputmEccPhoneId(Lcom/android/internal/telephony/simlock/MtnSimLockController;I)V

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v1, v4}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$msetEccMode(Lcom/android/internal/telephony/simlock/MtnSimLockController;Z)V

    :cond_1
    return-void
.end method

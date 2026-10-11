.class Lcom/android/internal/telephony/simlock/MtnSimLockController$1;
.super Landroid/database/ContentObserver;
.source "MtnSimLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/simlock/MtnSimLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/simlock/MtnSimLockController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    iget v1, v1, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_icc_operator_numeric"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmSimNumeric(Lcom/android/internal/telephony/simlock/MtnSimLockController;)[Ljava/lang/String;

    move-result-object v2

    aput-object v1, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange: mSimNumeric["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtnSimLockController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmSimNumericEmpty(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmSimNumericEmpty(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChange, mSimNumericEmpty put <"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", false>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$fgetmSimNumericEmpty(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->-$$Nest$msetEccMode(Lcom/android/internal/telephony/simlock/MtnSimLockController;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

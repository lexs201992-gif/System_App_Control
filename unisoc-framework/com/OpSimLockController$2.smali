.class Lcom/android/internal/telephony/simlock/OpSimLockController$2;
.super Ljava/lang/Object;
.source "OpSimLockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/simlock/OpSimLockController;->addRadioInteractorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/simlock/OpSimLockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    iget-object v0, v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    iget-object v2, v2, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/simlock/OpSimLockController;->-$$Nest$mnotifyRiServiceConnected(Lcom/android/internal/telephony/simlock/OpSimLockController;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$2;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->-$$Nest$mnotifyRiServiceDisconnected(Lcom/android/internal/telephony/simlock/OpSimLockController;Landroid/content/ComponentName;)V

    return-void
.end method

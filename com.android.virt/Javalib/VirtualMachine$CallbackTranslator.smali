.class Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;
.super Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;
.source "VirtualMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTranslator"
.end annotation


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mService:Landroid/system/virtualizationservice/IVirtualizationService;

.field final synthetic blacklist this$0:Landroid/system/virtualmachine/VirtualMachine;


# direct methods
.method public static synthetic blacklist $r8$lambda$9gwPlR6BtX_r2V3CHbB8xcSuBZ4(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onError$4(ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9yu_SACj9SkEFXAH3w_e1sqcLPg(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadFinished$3(ILandroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BQpChzIjnsCuYTgOfYMnfXRToFE(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V
    .locals 0

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$new$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h56VoddL7WUL4oJX5QEE1eGt6ms(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadStarted$1(Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kq2BWwPzeEPepHk7JoBJ64D5sH4(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$onPayloadReady$2(Landroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pA_66io-CijIesQ8CJfQmVuT508(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->lambda$reportStopped$5(ILandroid/system/virtualmachine/VirtualMachineCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualizationservice/IVirtualizationService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-direct {p0}, Landroid/system/virtualizationservice/IVirtualMachineCallback$Stub;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mService:Landroid/system/virtualizationservice/IVirtualizationService;

    new-instance p1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda0;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2}, Landroid/system/virtualizationservice/IVirtualizationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method private blacklist getTranslatedError(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getTranslatedReason(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :pswitch_2
    const/16 v0, 0xf

    return v0

    :pswitch_3
    const/16 v0, 0xe

    return v0

    :pswitch_4
    const/16 v0, 0xd

    return v0

    :pswitch_5
    const/16 v0, 0xc

    return v0

    :pswitch_6
    const/16 v0, 0xb

    return v0

    :pswitch_7
    const/16 v0, 0x8

    return v0

    :pswitch_8
    const/4 v0, 0x7

    return v0

    :pswitch_9
    const/4 v0, 0x6

    return v0

    :pswitch_a
    const/4 v0, 0x5

    return v0

    :pswitch_b
    const/4 v0, 0x4

    return v0

    :pswitch_c
    const/4 v0, 0x3

    return v0

    :pswitch_d
    const/4 v0, 0x1

    return v0

    :pswitch_e
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic blacklist lambda$new$0()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->reportStopped(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onError$4(ILjava/lang/String;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p3, v0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineCallback;->onError(Landroid/system/virtualmachine/VirtualMachine;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadFinished$3(ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p2, v0, p1}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadFinished(Landroid/system/virtualmachine/VirtualMachine;I)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadReady$2(Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p1, v0}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadReady(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$onPayloadStarted$1(Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p1, v0}, Landroid/system/virtualmachine/VirtualMachineCallback;->onPayloadStarted(Landroid/system/virtualmachine/VirtualMachine;)V

    return-void
.end method

.method private synthetic blacklist lambda$reportStopped$5(ILandroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    invoke-interface {p2, v0, p1}, Landroid/system/virtualmachine/VirtualMachineCallback;->onStopped(Landroid/system/virtualmachine/VirtualMachine;I)V

    return-void
.end method

.method private blacklist reportStopped(I)V
    .locals 3

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mOnDiedCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda5;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;I)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onDied(II)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->getTranslatedReason(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->reportStopped(I)V

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mService:Landroid/system/virtualizationservice/IVirtualizationService;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualizationService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public blacklist onError(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->getTranslatedError(I)I

    move-result v0

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v2, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p3}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda3;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;ILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onPayloadFinished(II)V
    .locals 2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda2;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;I)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onPayloadReady(I)V
    .locals 2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda4;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist onPayloadStarted(I)V
    .locals 2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;->this$0:Landroid/system/virtualmachine/VirtualMachine;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator$$ExternalSyntheticLambda1;-><init>(Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;)V

    invoke-static {v0, v1}, Landroid/system/virtualmachine/VirtualMachine;->-$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V

    return-void
.end method

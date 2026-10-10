.class public final synthetic Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic f$0:Landroid/security/rkp/service/RegistrationProxy;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Landroid/security/rkp/service/RegistrationProxy$2;


# direct methods
.method public synthetic constructor <init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$0:Landroid/security/rkp/service/RegistrationProxy;

    iput-object p2, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$2:Landroid/security/rkp/service/RegistrationProxy$2;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$0:Landroid/security/rkp/service/RegistrationProxy;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, p0, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;->f$2:Landroid/security/rkp/service/RegistrationProxy$2;

    invoke-static {v0, v1, v2}, Landroid/security/rkp/service/RegistrationProxy;->$r8$lambda$2XacYWljuzE3SPgZ6V_O1_51wN0(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V

    return-void
.end method

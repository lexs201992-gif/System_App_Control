.class public final synthetic Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic f$1:B

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$0:Landroid/os/OutcomeReceiver;

    iput-byte p2, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$1:B

    iput-object p3, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$0:Landroid/os/OutcomeReceiver;

    iget-byte v1, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$1:B

    iget-object v2, p0, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/security/rkp/service/RegistrationProxy$2;->lambda$onError$2(Landroid/os/OutcomeReceiver;BLjava/lang/String;)V

    return-void
.end method

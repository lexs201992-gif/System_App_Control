.class public final synthetic Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic f$1:Lcom/android/rkpdapp/IRegistration;


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/IRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/rkpdapp/IRegistration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/rkpdapp/IRegistration;

    invoke-static {v0, v1}, Landroid/security/rkp/service/RegistrationProxy$1;->lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/IRegistration;)V

    return-void
.end method

.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

.field public final synthetic f$1:Lcom/android/rkpdapp/metrics/ProvisioningAttempt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/service/RegistrationBinder;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

    iput-object p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;->f$1:Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;->f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;->f$1:Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    invoke-static {v0, p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->$r8$lambda$_nV5glSgGrEP7cuSSJtTWxP5KUA(Lcom/android/rkpdapp/service/RegistrationBinder;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V

    return-void
.end method

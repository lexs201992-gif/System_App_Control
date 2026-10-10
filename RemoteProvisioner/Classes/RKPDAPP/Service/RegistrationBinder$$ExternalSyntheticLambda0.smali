.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

.field public final synthetic f$1:[B

.field public final synthetic f$2:[B

.field public final synthetic f$3:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/service/RegistrationBinder;[B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

    iput-object p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$1:[B

    iput-object p3, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$2:[B

    iput-object p4, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$0:Lcom/android/rkpdapp/service/RegistrationBinder;

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$1:[B

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$2:[B

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;->f$3:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->$r8$lambda$hScfRbMlCxFJ5h7M1bQJMfCjb8I(Lcom/android/rkpdapp/service/RegistrationBinder;[B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    return-void
.end method

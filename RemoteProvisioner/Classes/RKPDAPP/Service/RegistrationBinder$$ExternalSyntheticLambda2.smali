.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda2;->f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda2;->f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    invoke-interface {p0}, Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;->onSuccess()V

    return-void
.end method

.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;->f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    iput-object p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;->f$0:Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->$r8$lambda$HERI4qRYSVUGLhle-iK-NBGGNdQ(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V

    return-void
.end method

.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/IGetKeyCallback;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    iput-object p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->$r8$lambda$WuYMfPP7MKuk1tNYyQo-M-s0G9Y(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V

    return-void
.end method

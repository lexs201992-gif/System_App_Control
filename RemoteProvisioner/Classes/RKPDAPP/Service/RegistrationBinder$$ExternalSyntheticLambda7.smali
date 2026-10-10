.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/IGetKeyCallback;

.field public final synthetic f$1:B

.field public final synthetic f$2:Lcom/android/rkpdapp/RkpdException;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    iput-byte p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$1:B

    iput-object p3, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$2:Lcom/android/rkpdapp/RkpdException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    iget-byte v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$1:B

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;->f$2:Lcom/android/rkpdapp/RkpdException;

    invoke-static {v0, v1, p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->$r8$lambda$oFRfOzuFBxjycCGAElbq2ua6oy0(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V

    return-void
.end method

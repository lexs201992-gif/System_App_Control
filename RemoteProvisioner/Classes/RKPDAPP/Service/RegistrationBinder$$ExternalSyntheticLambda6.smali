.class public final synthetic Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;


# instance fields
.field public final synthetic f$0:Lcom/android/rkpdapp/IGetKeyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda6;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda6;->f$0:Lcom/android/rkpdapp/IGetKeyCallback;

    invoke-interface {p0}, Lcom/android/rkpdapp/IGetKeyCallback;->onCancel()V

    return-void
.end method

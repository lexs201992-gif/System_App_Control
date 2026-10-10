.class public final synthetic Lcom/android/rkpdapp/interfaces/SystemInterface$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/rkpdapp/database/RkpKey;

    invoke-static {p1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->$r8$lambda$5UgZl3wqlaPR3yPd2suBrOXLChw(Lcom/android/rkpdapp/database/RkpKey;)Landroid/hardware/security/keymint/MacedPublicKey;

    move-result-object p0

    return-object p0
.end method

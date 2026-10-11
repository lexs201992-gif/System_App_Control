.class public final synthetic Lcom/android/internal/telephony/SimStateTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/SimStateTracker$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/SimStateTracker$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/telephony/UiccCardInfo;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SimStateTracker;->lambda$isUiccEnable$0(ILandroid/telephony/UiccCardInfo;)Z

    move-result p1

    return p1
.end method

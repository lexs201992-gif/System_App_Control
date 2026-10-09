.class public abstract Lcom/android/internal/net/utils/SimpleStateMachine;
.super Ljava/lang/Object;
.source "SimpleStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final blacklist mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;"
        }
    .end annotation
.end field

.field protected blacklist mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/net/utils/SimpleStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/internal/net/utils/SimpleStateMachine$1;-><init>(Lcom/android/internal/net/utils/SimpleStateMachine;)V

    iput-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mNullState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    iput-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    return-void
.end method


# virtual methods
.method public blacklist process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    invoke-virtual {v0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist transitionAndProcess(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;TT;)TR;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/net/utils/SimpleStateMachine;->transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V

    iget-object v0, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    invoke-virtual {v0, p2}, Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;->process(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist transitionTo(Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/utils/SimpleStateMachine<",
            "TT;TR;>.SimpleState;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/net/utils/SimpleStateMachine;->mState:Lcom/android/internal/net/utils/SimpleStateMachine$SimpleState;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SimpleState value must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

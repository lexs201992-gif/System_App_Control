.class final Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;
.super Ljava/lang/Object;
.source "UniIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UniRequest"
.end annotation


# instance fields
.field mResult:Ljava/lang/Object;

.field mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;-><init>()V

    return-void
.end method

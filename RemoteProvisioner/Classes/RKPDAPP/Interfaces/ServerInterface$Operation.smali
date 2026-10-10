.class final enum Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;
.super Ljava/lang/Enum;
.source "ServerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rkpdapp/interfaces/ServerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

.field public static final enum FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

.field public static final enum SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;


# direct methods
.method private static synthetic $values()[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;
    .locals 2

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    sget-object v1, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    filled-new-array {v0, v1}, [Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    const-string v1, "FETCH_GEEK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    new-instance v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    const-string v1, "SIGN_CERTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-static {}, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->$values()[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->$VALUES:[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;
    .locals 1

    const-class v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    return-object p0
.end method

.method public static values()[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;
    .locals 1

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->$VALUES:[Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v0}, [Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    return-object v0
.end method


# virtual methods
.method public getHttpErrorStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please declare status for new operation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIoExceptionStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please declare status for new operation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTimedOutStatus()Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->FETCH_GEEK:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;->SIGN_CERTS:Lcom/android/rkpdapp/interfaces/ServerInterface$Operation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Please declare status for new operation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

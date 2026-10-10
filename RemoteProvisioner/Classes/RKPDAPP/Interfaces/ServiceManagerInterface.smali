.class public Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;
.super Ljava/lang/Object;
.source "ServiceManagerInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RkpdSvcManagerInterface"

.field private static sInstances:[Lcom/android/rkpdapp/interfaces/SystemInterface;


# direct methods
.method public static synthetic $r8$lambda$4ceGUhjWZQonTciSD9ASzYRWAco(I)[Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->lambda$getAllInstances$1(I)[Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$D30U7T9o3cJVOTDuQvDbyhjfSIU(Ljava/lang/String;Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->lambda$getAllInstances$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSystemInterface(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 3

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-direct {v1, v0, p0}, Lcom/android/rkpdapp/interfaces/SystemInterface;-><init>(Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find any implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllInstances()[Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 3

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->sInstances:[Lcom/android/rkpdapp/interfaces/SystemInterface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->DESCRIPTOR:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getDeclaredInstances(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/rkpdapp/interfaces/SystemInterface;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 5

    sget-object v0, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->sInstances:[Lcom/android/rkpdapp/interfaces/SystemInterface;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find any implementation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->createSystemInterface(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAllInstances$0(Ljava/lang/String;Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->createSystemInterface(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getAllInstances$1(I)[Lcom/android/rkpdapp/interfaces/SystemInterface;
    .locals 0

    new-array p0, p0, [Lcom/android/rkpdapp/interfaces/SystemInterface;

    return-object p0
.end method

.method public static setInstances([Lcom/android/rkpdapp/interfaces/SystemInterface;)V
    .locals 0

    sput-object p0, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->sInstances:[Lcom/android/rkpdapp/interfaces/SystemInterface;

    return-void
.end method

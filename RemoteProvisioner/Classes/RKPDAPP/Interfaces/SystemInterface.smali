.class public Lcom/android/rkpdapp/interfaces/SystemInterface;
.super Ljava/lang/Object;
.source "SystemInterface.java"


# instance fields
.field private final mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedCurve:I


# direct methods
.method public static synthetic $r8$lambda$5UgZl3wqlaPR3yPd2suBrOXLChw(Lcom/android/rkpdapp/database/RkpKey;)Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/interfaces/SystemInterface;->lambda$generateCsr$0(Lcom/android/rkpdapp/database/RkpKey;)Landroid/hardware/security/keymint/MacedPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tbNO6l1dVBulUDX3rHFX-D6azGw(I)[Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/interfaces/SystemInterface;->lambda$generateCsr$1(I)[Landroid/hardware/security/keymint/MacedPublicKey;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mServiceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    :try_start_0
    invoke-interface {p1}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p1

    iget p1, p1, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedEekCurve:I

    iput p1, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mSupportedCurve:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "RkpdSystemInterface"

    const-string p2, "Failed to call getHardwareInfo"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$generateCsr$0(Lcom/android/rkpdapp/database/RkpKey;)Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 1

    new-instance v0, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {v0}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    invoke-virtual {p0}, Lcom/android/rkpdapp/database/RkpKey;->getMacedPublicKey()[B

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/MacedPublicKey;->macedKey:[B

    return-object v0
.end method

.method private static synthetic lambda$generateCsr$1(I)[Landroid/hardware/security/keymint/MacedPublicKey;
    .locals 0

    new-array p0, p0, [Landroid/hardware/security/keymint/MacedPublicKey;

    return-object p0
.end method


# virtual methods
.method public generateCsr(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/GeekResponse;Ljava/util/List;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/rkpdapp/metrics/ProvisioningAttempt;",
            "Lcom/android/rkpdapp/GeekResponse;",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/RkpKey;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    const-string v0, "RkpdSystemInterface"

    invoke-virtual {p2}, Lcom/android/rkpdapp/GeekResponse;->getChallenge()[B

    move-result-object v8

    invoke-interface {p3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/rkpdapp/interfaces/SystemInterface$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/rkpdapp/interfaces/SystemInterface$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/rkpdapp/interfaces/SystemInterface$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/rkpdapp/interfaces/SystemInterface$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Landroid/hardware/security/keymint/MacedPublicKey;

    :try_start_0
    invoke-virtual {p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->startBinderWait()Lcom/android/rkpdapp/utils/StopWatch;

    move-result-object v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getVersion()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    new-instance v10, Landroid/hardware/security/keymint/DeviceInfo;

    invoke-direct {v10}, Landroid/hardware/security/keymint/DeviceInfo;-><init>()V

    new-instance v11, Landroid/hardware/security/keymint/ProtectedData;

    invoke-direct {v11}, Landroid/hardware/security/keymint/ProtectedData;-><init>()V

    iget v1, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mSupportedCurve:I

    invoke-virtual {p2, v1}, Lcom/android/rkpdapp/GeekResponse;->getGeekChain(I)[B

    move-result-object v4

    iget-object v1, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    const/4 v2, 0x0

    move-object v5, v8

    move-object v6, v10

    move-object v7, v11

    invoke-interface/range {v1 .. v7}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequest(Z[Landroid/hardware/security/keymint/MacedPublicKey;[B[BLandroid/hardware/security/keymint/DeviceInfo;Landroid/hardware/security/keymint/ProtectedData;)[B

    move-result-object p0

    new-instance p2, Lco/nstant/in/cbor/model/Array;

    invoke-direct {p2}, Lco/nstant/in/cbor/model/Array;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rkpdapp/database/RkpKey;

    invoke-virtual {v1}, Lcom/android/rkpdapp/database/RkpKey;->getCoseKey()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    invoke-virtual {p2, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p3, Lco/nstant/in/cbor/model/Array;

    invoke-direct {p3}, Lco/nstant/in/cbor/model/Array;-><init>()V

    new-instance v1, Lco/nstant/in/cbor/model/ByteString;

    invoke-static {}, Lcom/android/rkpdapp/utils/CborUtils;->makeProtectedHeaders()Lco/nstant/in/cbor/model/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/android/rkpdapp/utils/CborUtils;->encodeCbor(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p3, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p3

    new-instance v1, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v1}, Lco/nstant/in/cbor/model/Map;-><init>()V

    invoke-virtual {p3, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p3

    new-instance v1, Lco/nstant/in/cbor/model/ByteString;

    invoke-static {p2}, Lcom/android/rkpdapp/utils/CborUtils;->encodeCbor(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p3, v1}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p2

    new-instance p3, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {p3, p0}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p2, p3}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    move-result-object p0

    iget-object p2, v10, Landroid/hardware/security/keymint/DeviceInfo;->deviceInfo:[B

    iget-object p3, v11, Landroid/hardware/security/keymint/ProtectedData;->protectedData:[B

    invoke-static {p0}, Lcom/android/rkpdapp/utils/CborUtils;->encodeCbor(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0

    invoke-static {}, Lcom/android/rkpdapp/utils/CborUtils;->buildUnverifiedDeviceInfo()Lco/nstant/in/cbor/model/Map;

    move-result-object v1

    invoke-static {p2, v8, p3, p0, v1}, Lcom/android/rkpdapp/utils/CborUtils;->buildCertificateRequest([B[B[B[BLco/nstant/in/cbor/model/Map;)[B

    move-result-object p0
    :try_end_2
    .catch Lco/nstant/in/cbor/CborException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lco/nstant/in/cbor/CborException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    :try_start_4
    const-string p2, "Failed to parse/build CBOR"

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    invoke-interface {p0, v3, v8}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateCertificateRequestV2([Landroid/hardware/security/keymint/MacedPublicKey;[B)[B

    move-result-object p0

    const-string p2, "CSR request"

    sget-object p3, Lco/nstant/in/cbor/model/MajorType;->ARRAY:Lco/nstant/in/cbor/model/MajorType;

    invoke-static {p0, p2, p3}, Lcom/android/rkpdapp/utils/CborUtils;->decodeCbor([BLjava/lang/String;Lco/nstant/in/cbor/model/MajorType;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/Array;

    invoke-static {}, Lcom/android/rkpdapp/utils/CborUtils;->buildUnverifiedDeviceInfo()Lco/nstant/in/cbor/model/Map;

    move-result-object p2

    invoke-virtual {p0, p2}, Lco/nstant/in/cbor/model/Array;->add(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Array;

    invoke-static {p0}, Lcom/android/rkpdapp/utils/CborUtils;->encodeCbor(Lco/nstant/in/cbor/model/DataItem;)[B

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_3

    :try_start_5
    invoke-virtual {v9}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lco/nstant/in/cbor/CborException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v9, :cond_4

    :try_start_6
    invoke-virtual {v9}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_7
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lco/nstant/in/cbor/CborException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception p0

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    throw p0

    :catch_2
    move-exception p0

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to generate CSR blob. Failed with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :catch_3
    move-exception p0

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    const-string p1, "Failed to generate CSR blob"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public generateKey(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/database/RkpKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    const-string v0, "RkpdSystemInterface"

    new-instance v1, Landroid/hardware/security/keymint/MacedPublicKey;

    invoke-direct {v1}, Landroid/hardware/security/keymint/MacedPublicKey;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->startBinderWait()Lcom/android/rkpdapp/utils/StopWatch;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v1}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->generateEcdsaP256KeyPair(ZLandroid/hardware/security/keymint/MacedPublicKey;)[B

    move-result-object v3

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mServiceName:Ljava/lang/String;

    invoke-static {v3, p0, v1}, Lcom/android/rkpdapp/utils/CborUtils;->extractRkpKeyFromMacedKey([BLjava/lang/String;Landroid/hardware/security/keymint/MacedPublicKey;)Lcom/android/rkpdapp/database/RkpKey;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Lcom/android/rkpdapp/utils/StopWatch;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lco/nstant/in/cbor/CborException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    throw p0

    :catch_1
    move-exception p0

    sget-object v1, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, v1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to generate key. Failed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0

    :catch_2
    move-exception p0

    sget-object v1, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, v1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    const-string p1, "Failed to generate key."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getBatchSize()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->supportedNumKeysInCsr:I

    const-string v0, "), defaulting to "

    const-string v1, "RkpdSystemInterface"

    const/16 v2, 0x14

    if-gt p0, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAL returned a batch size that\'s too small ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v2, 0x200

    if-lt p0, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAL returned a batch size that\'s too large ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mBinder:Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;

    invoke-interface {p0}, Landroid/hardware/security/keymint/IRemotelyProvisionedComponent;->getHardwareInfo()Landroid/hardware/security/keymint/RpcHardwareInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/security/keymint/RpcHardwareInfo;->versionNumber:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/rkpdapp/interfaces/SystemInterface;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

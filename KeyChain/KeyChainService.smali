.class public Lcom/android/keychain/KeyChainService;
.super Landroid/app/IntentService;
.source "KeyChainService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keychain/KeyChainService$Injector;,
        Lcom/android/keychain/KeyChainService$KeyStoreAliasesProvider;,
        Lcom/android/keychain/KeyChainService$CallerIdentity;
    }
.end annotation


# instance fields
.field private final ALLOWED_UIDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCredentialManagementApp:Landroid/security/CredentialManagementApp;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCredentialManagementAppLock"
        }
    .end annotation
.end field

.field private mCredentialManagementAppLock:Ljava/lang/Object;

.field private mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

.field private final mIKeyChainService:Landroid/security/IKeyChainService$Stub;

.field private mInjector:Lcom/android/keychain/KeyChainService$Injector;

.field private mKeyStore:Ljava/security/KeyStore;

.field private mStateStorage:Lcom/android/keychain/KeyChainStateStorage;


# direct methods
.method static bridge synthetic -$$Nest$fgetALLOWED_UIDS(Lcom/android/keychain/KeyChainService;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->ALLOWED_UIDS:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCredentialManagementApp(Lcom/android/keychain/KeyChainService;)Landroid/security/CredentialManagementApp;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementApp:Landroid/security/CredentialManagementApp;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCredentialManagementAppLock(Lcom/android/keychain/KeyChainService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementAppLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGrantsDb(Lcom/android/keychain/KeyChainService;)Lcom/android/keychain/internal/GrantsDatabase;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/keychain/KeyChainService;)Lcom/android/keychain/KeyChainService$Injector;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mInjector:Lcom/android/keychain/KeyChainService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyStore(Lcom/android/keychain/KeyChainService;)Ljava/security/KeyStore;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mKeyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateStorage(Lcom/android/keychain/KeyChainService;)Lcom/android/keychain/KeyChainStateStorage;
    .locals 0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mStateStorage:Lcom/android/keychain/KeyChainStateStorage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCredentialManagementApp(Lcom/android/keychain/KeyChainService;Landroid/security/CredentialManagementApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementApp:Landroid/security/CredentialManagementApp;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastKeychainChange(Lcom/android/keychain/KeyChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keychain/KeyChainService;->broadcastKeychainChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastLegacyStorageChange(Lcom/android/keychain/KeyChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keychain/KeyChainService;->broadcastLegacyStorageChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastPermissionChange(Lcom/android/keychain/KeyChainService;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keychain/KeyChainService;->broadcastPermissionChange(ILjava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastTrustStoreChange(Lcom/android/keychain/KeyChainService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keychain/KeyChainService;->broadcastTrustStoreChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCaller(Lcom/android/keychain/KeyChainService;)Lcom/android/keychain/KeyChainService$CallerIdentity;
    .locals 0

    invoke-direct {p0}, Lcom/android/keychain/KeyChainService;->getCaller()Lcom/android/keychain/KeyChainService$CallerIdentity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetKeyStore(Lcom/android/keychain/KeyChainService;Z)Ljava/security/KeyStore;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainService;->getKeyStore(Z)Ljava/security/KeyStore;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmakeKeyDescriptor(Lcom/android/keychain/KeyChainService;Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainService;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smemptyOrBase64Encoded([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/keychain/KeyChainService;->emptyOrBase64Encoded([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    const-class v0, Lcom/android/keychain/KeyChainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->ALLOWED_UIDS:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementAppLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/keychain/KeyChainService$1;

    invoke-direct {v0, p0}, Lcom/android/keychain/KeyChainService$1;-><init>(Lcom/android/keychain/KeyChainService;)V

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mIKeyChainService:Landroid/security/IKeyChainService$Stub;

    new-instance v0, Lcom/android/keychain/KeyChainService$Injector;

    invoke-direct {v0}, Lcom/android/keychain/KeyChainService$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mInjector:Lcom/android/keychain/KeyChainService$Injector;

    return-void
.end method

.method private broadcastKeychainChange()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/IntentService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private broadcastLegacyStorageChange()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/app/IntentService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private broadcastPermissionChange(ILjava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.security.action.KEY_ACCESS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.security.extra.KEY_ALIAS"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.security.extra.KEY_ACCESSIBLE"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Landroid/app/IntentService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private broadcastTrustStoreChange()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.action.TRUST_STORE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/IntentService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private static emptyOrBase64Encoded([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCaller()Lcom/android/keychain/KeyChainService$CallerIdentity;
    .locals 1

    new-instance v0, Lcom/android/keychain/KeyChainService$CallerIdentity;

    invoke-direct {v0, p0}, Lcom/android/keychain/KeyChainService$CallerIdentity;-><init>(Lcom/android/keychain/KeyChainService;)V

    return-object v0
.end method

.method private getKeyStore()Ljava/security/KeyStore;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mInjector:Lcom/android/keychain/KeyChainService$Injector;

    invoke-virtual {p0}, Lcom/android/keychain/KeyChainService$Injector;->getKeyStoreInstance()Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "KeyChain"

    const-string v1, "Error opening AndroidKeyStore."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getKeyStore(Z)Ljava/security/KeyStore;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mKeyStore:Ljava/security/KeyStore;

    return-object p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mInjector:Lcom/android/keychain/KeyChainService$Injector;

    invoke-virtual {p0}, Lcom/android/keychain/KeyChainService$Injector;->getKeyStoreInstance()Ljava/security/KeyStore;

    move-result-object p0

    new-instance p1, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    const/16 v0, 0x66

    invoke-direct {p1, v0}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "KeyChain"

    const-string v0, "Failed to open AndroidKeyStore for WI-FI namespace."

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .locals 2

    new-instance p0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    iput-object p1, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-class v0, Landroid/security/IKeyChainService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keychain/KeyChainService;->mIKeyChainService:Landroid/security/IKeyChainService$Stub;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-direct {p0}, Lcom/android/keychain/KeyChainService;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mKeyStore:Ljava/security/KeyStore;

    new-instance v1, Lcom/android/keychain/internal/GrantsDatabase;

    new-instance v2, Lcom/android/keychain/KeyChainService$KeyStoreAliasesProvider;

    invoke-direct {v2, v0}, Lcom/android/keychain/KeyChainService$KeyStoreAliasesProvider;-><init>(Ljava/security/KeyStore;)V

    invoke-direct {v1, p0, v2}, Lcom/android/keychain/internal/GrantsDatabase;-><init>(Landroid/content/Context;Lcom/android/keychain/internal/ExistingKeysProvider;)V

    iput-object v1, p0, Lcom/android/keychain/KeyChainService;->mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

    new-instance v0, Lcom/android/keychain/KeyChainStateStorage;

    invoke-virtual {p0}, Landroid/app/IntentService;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainStateStorage;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mStateStorage:Lcom/android/keychain/KeyChainStateStorage;

    iget-object v0, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementAppLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/keychain/KeyChainService;->mStateStorage:Lcom/android/keychain/KeyChainStateStorage;

    invoke-virtual {v1}, Lcom/android/keychain/KeyChainStateStorage;->loadCredentialManagementApp()Landroid/security/CredentialManagementApp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keychain/KeyChainService;->mCredentialManagementApp:Landroid/security/CredentialManagementApp;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    iget-object v0, p0, Lcom/android/keychain/KeyChainService;->mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

    invoke-virtual {v0}, Lcom/android/keychain/internal/GrantsDatabase;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keychain/KeyChainService;->mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keychain/KeyChainService;->mGrantsDb:Lcom/android/keychain/internal/GrantsDatabase;

    invoke-virtual {p0}, Landroid/app/IntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keychain/internal/GrantsDatabase;->purgeOldGrants(Landroid/content/pm/PackageManager;)V

    :cond_0
    return-void
.end method

.method setInjector(Lcom/android/keychain/KeyChainService$Injector;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/keychain/KeyChainService;->mInjector:Lcom/android/keychain/KeyChainService$Injector;

    return-void
.end method

.class public final Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;
.super Lcom/android/rkpdapp/database/ProvisionedKeyDao;
.source "ProvisionedKeyDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfProvisionedKey:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/android/rkpdapp/database/ProvisionedKey;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllKeys:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteExpiringKeys:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpgradeKeyBlob:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfProvisionedKey:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/android/rkpdapp/database/ProvisionedKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$1;-><init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__insertionAdapterOfProvisionedKey:Landroidx/room/EntityInsertionAdapter;

    new-instance v0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$2;-><init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__updateAdapterOfProvisionedKey:Landroidx/room/EntityDeletionOrUpdateAdapter;

    new-instance v0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$3;-><init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteExpiringKeys:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$4;-><init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteAllKeys:Landroidx/room/SharedSQLiteStatement;

    new-instance v0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$5;-><init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfUpgradeKeyBlob:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$001(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getOrAssignKey(Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllKeys()V
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteAllKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteAllKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteAllKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public deleteExpiringKeys(Ljava/time/Instant;)V
    .locals 4

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteExpiringKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    invoke-static {p1}, Lcom/android/rkpdapp/database/InstantConverter;->toTimestamp(Ljava/time/Instant;)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_0
    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteExpiringKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfDeleteExpiringKeys:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public getKeyForClientAndIrpc(Ljava/lang/String;II)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 8

    const-string v0, "SELECT * FROM provisioned_keys WHERE client_uid = ? AND irpc_hal = ? AND key_id = ?"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    int-to-long v3, p2

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "key_blob"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string p3, "irpc_hal"

    invoke-static {p0, p3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p3

    const-string v1, "public_key"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "certificate_chain"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "expiration_time"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "client_uid"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "key_id"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lcom/android/rkpdapp/database/ProvisionedKey;

    invoke-direct {v6}, Lcom/android/rkpdapp/database/ProvisionedKey;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    :goto_1
    invoke-interface {p0, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    :goto_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    goto :goto_3

    :cond_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    :goto_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    goto :goto_4

    :cond_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    :goto_4
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, p2

    goto :goto_5

    :cond_5
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_5
    invoke-static {p1}, Lcom/android/rkpdapp/database/InstantConverter;->fromTimestamp(Ljava/lang/Long;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    :goto_6
    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object p2, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v6, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_7
    move-object p2, v6

    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getOrAssignKey(Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->access$001(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object p1

    iget-object p2, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public getTotalExpiringKeysForIrpc(Ljava/lang/String;Ljava/time/Instant;)I
    .locals 5

    const-string v0, "SELECT COUNT(*) FROM provisioned_keys WHERE expiration_time < ? AND irpc_hal = ?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    invoke-static {p2}, Lcom/android/rkpdapp/database/InstantConverter;->toTimestamp(Ljava/time/Instant;)Ljava/lang/Long;

    move-result-object p2

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p2, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return p2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getTotalKeysForIrpc(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM provisioned_keys WHERE irpc_hal = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public getTotalUnassignedKeysForIrpc(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM provisioned_keys WHERE client_uid IS NULL AND irpc_hal = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method getUnassignedKeyForIrpc(Ljava/lang/String;Ljava/time/Instant;)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 9

    const-string v0, "SELECT * FROM provisioned_keys WHERE client_uid IS NULL AND irpc_hal = ? AND expiration_time >= ? LIMIT 1"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/android/rkpdapp/database/InstantConverter;->toTimestamp(Ljava/time/Instant;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "key_blob"

    invoke-static {p0, p1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "irpc_hal"

    invoke-static {p0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "public_key"

    invoke-static {p0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "certificate_chain"

    invoke-static {p0, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "expiration_time"

    invoke-static {p0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "client_uid"

    invoke-static {p0, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "key_id"

    invoke-static {p0, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v7, Lcom/android/rkpdapp/database/ProvisionedKey;

    invoke-direct {v7}, Lcom/android/rkpdapp/database/ProvisionedKey;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    goto :goto_2

    :cond_2
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    :goto_2
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    :goto_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    goto :goto_4

    :cond_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    :goto_4
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    goto :goto_5

    :cond_5
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    :goto_5
    invoke-interface {p0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, p2

    goto :goto_6

    :cond_6
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lcom/android/rkpdapp/database/InstantConverter;->fromTimestamp(Ljava/lang/Long;)Ljava/time/Instant;

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-interface {p0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    :goto_7
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_8

    iput-object p2, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v7, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    move-object p2, v7

    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p1
.end method

.method public insertKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/ProvisionedKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__insertionAdapterOfProvisionedKey:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public updateKey(Lcom/android/rkpdapp/database/ProvisionedKey;)V
    .locals 1

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__updateAdapterOfProvisionedKey:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public upgradeKeyBlob(I[B[B)I
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    iget-object v0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfUpgradeKeyBlob:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_0
    const/4 p3, 0x2

    if-nez p2, :cond_1

    invoke-interface {v0, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {v0, p3, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_1
    const/4 p2, 0x3

    int-to-long v1, p1

    invoke-interface {v0, p2, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    iget-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    iget-object p2, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfUpgradeKeyBlob:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    iget-object p0, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;->__preparedStmtOfUpgradeKeyBlob:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p0, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

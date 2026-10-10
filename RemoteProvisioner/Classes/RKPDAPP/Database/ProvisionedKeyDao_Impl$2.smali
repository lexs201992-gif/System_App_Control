.class Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "ProvisionedKeyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/android/rkpdapp/database/ProvisionedKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$2;->this$0:Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/rkpdapp/database/ProvisionedKey;)V
    .locals 3

    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_0
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->irpcHal:Ljava/lang/String;

    const/4 v0, 0x2

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->publicKey:[B

    const/4 v0, 0x3

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_2
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    const/4 v0, 0x4

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_3
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->expirationTime:Ljava/time/Instant;

    invoke-static {p0}, Lcom/android/rkpdapp/database/InstantConverter;->toTimestamp(Ljava/time/Instant;)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_4
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->clientUid:Ljava/lang/Integer;

    const/4 v0, 0x6

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_5
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->keyId:Ljava/lang/Integer;

    const/4 v0, 0x7

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_6
    iget-object p0, p2, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    const/16 p2, 0x8

    if-nez p0, :cond_7

    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, p2, p0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    :goto_7
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/rkpdapp/database/ProvisionedKey;

    invoke-virtual {p0, p1, p2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/android/rkpdapp/database/ProvisionedKey;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "UPDATE OR ABORT `provisioned_keys` SET `key_blob` = ?,`irpc_hal` = ?,`public_key` = ?,`certificate_chain` = ?,`expiration_time` = ?,`client_uid` = ?,`key_id` = ? WHERE `key_blob` = ?"

    return-object p0
.end method

.class Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "RkpdDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE IF NOT EXISTS `provisioned_keys` (`key_blob` BLOB NOT NULL, `irpc_hal` TEXT NOT NULL, `public_key` BLOB NOT NULL, `certificate_chain` BLOB NOT NULL, `expiration_time` INTEGER NOT NULL, `client_uid` INTEGER, `key_id` INTEGER, PRIMARY KEY(`key_blob`))"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE UNIQUE INDEX IF NOT EXISTS `index_provisioned_keys_client_uid_key_id_irpc_hal` ON `provisioned_keys` (`client_uid`, `key_id`, `irpc_hal`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_provisioned_keys_expiration_time` ON `provisioned_keys` (`expiration_time`)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'fa3dd52e1411a1f25f89f26c608e1a95\')"

    invoke-interface {p1, p0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `provisioned_keys`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$000(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$100(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v2}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$200(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$300(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$400(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v2}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$500(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$602(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0, p1}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$700(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$800(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v0}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$900(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/rkpdapp/database/RkpdDatabase_Impl$1;->this$0:Lcom/android/rkpdapp/database/RkpdDatabase_Impl;

    invoke-static {v2}, Lcom/android/rkpdapp/database/RkpdDatabase_Impl;->access$1000(Lcom/android/rkpdapp/database/RkpdDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method protected onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 11

    new-instance p0, Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v2, "key_blob"

    const-string v3, "BLOB"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "key_blob"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "irpc_hal"

    const-string v4, "TEXT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v1, "irpc_hal"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v3, "public_key"

    const-string v4, "BLOB"

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "public_key"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v4, "certificate_chain"

    const-string v5, "BLOB"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "certificate_chain"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v4, "expiration_time"

    const-string v5, "INTEGER"

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "expiration_time"

    invoke-virtual {p0, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v4, "client_uid"

    const-string v5, "INTEGER"

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "client_uid"

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/room/util/TableInfo$Column;

    const-string v5, "key_id"

    const-string v6, "INTEGER"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "key_id"

    invoke-virtual {p0, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v6, Ljava/util/HashSet;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "ASC"

    filled-new-array {v3, v3, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v8, "index_provisioned_keys_client_uid_key_id_irpc_hal"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9, v1, v4}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "index_provisioned_keys_expiration_time"

    invoke-direct {v1, v4, v5, v2, v3}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/room/util/TableInfo;

    const-string v2, "provisioned_keys"

    invoke-direct {v1, v2, p0, v0, v6}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    invoke-static {p1, v2}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroidx/room/RoomOpenHelper$ValidationResult;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provisioned_keys(com.android.rkpdapp.database.ProvisionedKey).\n Expected:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Found:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v5, p0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p0, Landroidx/room/RoomOpenHelper$ValidationResult;

    const/4 p1, 0x0

    invoke-direct {p0, v9, p1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

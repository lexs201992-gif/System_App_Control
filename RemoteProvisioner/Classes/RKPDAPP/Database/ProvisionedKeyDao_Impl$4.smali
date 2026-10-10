.class Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "ProvisionedKeyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;


# direct methods
.method constructor <init>(Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl$4;->this$0:Lcom/android/rkpdapp/database/ProvisionedKeyDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "DELETE FROM provisioned_keys"

    return-object p0
.end method

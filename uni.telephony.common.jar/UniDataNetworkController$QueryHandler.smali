.class Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UniDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/UniDataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/data/UniDataNetworkController;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fputhasNumber(Lcom/android/internal/telephony/data/UniDataNetworkController;Z)V

    if-eqz p3, :cond_3

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnNum(Lcom/android/internal/telephony/data/UniDataNetworkController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fputhasNumber(Lcom/android/internal/telephony/data/UniDataNetworkController;Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p3, :cond_3

    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown during hasSpeciaNumber e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataNetworkController;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_3

    goto :goto_2

    :goto_3
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->getIccFdnEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fputmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmUniDataSettingsManager(Lcom/android/internal/telephony/data/UniDataNetworkController;)Lcom/android/internal/telephony/data/UniDataSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$QueryHandler;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgethasNumber(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v1

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setVendorDataEnabled(ZI)V

    :cond_4
    return-void
.end method

.class public Lcom/android/internal/telephony/cat/UniCatManagerImpl;
.super Lcom/android/internal/telephony/cat/UniCatManager;
.source "UniCatManagerImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UniCatManagerImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/UniCatManager;-><init>()V

    return-void
.end method


# virtual methods
.method public addItemForSelectItem(Lcom/android/internal/telephony/cat/AppInterface$CommandType;Lcom/android/internal/telephony/cat/ComprehensionTlv;Lcom/android/internal/telephony/cat/Menu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "addItemForSelectItem"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public sendTrForSetUpCall(Lcom/android/internal/telephony/cat/CatResponseMessage;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 2

    const-string v0, "sendTrForSetUpCall"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getResCode()Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfoDefault()V

    :goto_0
    return-object p3
.end method

.method public sendTrForSetUpCallNetworkError(Lcom/android/internal/telephony/cat/AppInterface$CommandType;Lcom/android/internal/telephony/cat/CatResponseMessage;Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 2

    const-string v0, "sendTrForSetUpCallNetworkError"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v0, :cond_1

    iget v0, p3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x91

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9d

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendTrForSetUpCallUserNotAccept(Lcom/android/internal/telephony/cat/AppInterface$CommandType;Lcom/android/internal/telephony/cat/CatResponseMessage;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1

    const-string v0, "sendTrForSetUpCallUserNotAccept"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfoDefault()V

    return-object p4
.end method

.method public sendTrForSetUpCallUserNotResponse(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/cat/CatResponseMessage;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;
    .locals 1

    const-string v0, "sendTrForSetUpCallUserNotResponse"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfoDefault()V

    return-object p3
.end method

.class public Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.source "UniImsPhoneConnection.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UniImsPhoneConnection"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V

    return-void
.end method


# virtual methods
.method public onDisconnect(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniImsPhoneConnection"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->mCause:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->onDisconnect()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneConnection;->getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.class public Lcom/android/internal/telephony/uicc/UniIccIoResult;
.super Ljava/lang/Object;
.source "UniIccIoResult.java"


# static fields
.field private static final blacklist UNKNOWN_ERROR:Ljava/lang/String; = "unknown"


# instance fields
.field public greylist payload:[B

.field public greylist sw1:I

.field public greylist sw2:I


# direct methods
.method public constructor greylist <init>(IILjava/lang/String;)V
    .locals 1

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/UniIccIoResult;-><init>(II[B)V

    return-void
.end method

.method public constructor greylist <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    return-void
.end method

.method private blacklist getErrorString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    const-string v1, "no information given"

    const-string v2, "the interpretation of this status word is command dependent"

    const-string v3, "memory problem"

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    return-object v4

    :sswitch_1
    return-object v4

    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "authentication error, no memory space available in EF_MUK"

    return-object v0

    :sswitch_4
    const-string v0, "authentication error, no memory space available"

    return-object v0

    :sswitch_5
    const-string v0, "key freshness failure"

    return-object v0

    :sswitch_6
    const-string v0, "authentication error, security context not supported"

    return-object v0

    :sswitch_7
    const-string v0, "authentication error, application specific"

    return-object v0

    :sswitch_8
    const-string v0, "increase cannot be performed, Max value reached"

    return-object v0

    :sswitch_9
    const-string v0, "unsuccessful CHV verification, no attempt left/unsuccessful UNBLOCK CHV verification, no attempt left/CHV blocked/UNBLOCK CHV blocked"

    return-object v0

    :sswitch_a
    const-string v0, "in contradiction with invalidation status"

    return-object v0

    :sswitch_b
    const-string v0, "in contradiction with CHV status"

    return-object v0

    :sswitch_c
    const-string v0, "access condition not fulfilled/unsuccessful CHV verification, at least one attempt left/unsuccessful UNBLOCK CHV verification, at least one attempt left/authentication failed"

    return-object v0

    :sswitch_d
    const-string v0, "no CHV initialized"

    return-object v0

    :sswitch_e
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "file is inconsistent with the command"

    return-object v0

    :sswitch_10
    const-string v0, "file ID not found/pattern not found"

    return-object v0

    :sswitch_11
    const-string v0, "out f range (invalid address)"

    return-object v0

    :sswitch_12
    const-string v0, "no EF selected"

    return-object v0

    :sswitch_13
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "SIM Application Toolkit is busy. Command cannot be executed at present, further normal commands are allowed"

    return-object v0

    :sswitch_14
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    shr-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    const-string v0, "command successful but after using an internal update retry routine"

    return-object v0

    :cond_0
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    return-object v3

    :sswitch_15
    return-object v4

    :sswitch_16
    return-object v4

    :sswitch_17
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_2

    return-object v2

    :pswitch_2
    const-string v0, "technical problem with no diagnostic given"

    return-object v0

    :sswitch_18
    const-string v0, "wrong instruction class given in the command"

    return-object v0

    :sswitch_19
    const-string v0, "unknown instruction code given in the command"

    return-object v0

    :sswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong length, retry with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1b
    const-string v0, "incorrect parameter P1 or P2"

    return-object v0

    :sswitch_1c
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_3

    :pswitch_3
    goto/16 :goto_0

    :pswitch_4
    const-string v0, "referenced data not found"

    return-object v0

    :pswitch_5
    const-string v0, "lc inconsistent with P1 to P2"

    return-object v0

    :pswitch_6
    const-string v0, "incorrect parameters P1 to P2"

    return-object v0

    :pswitch_7
    const-string v0, "not enough memory space"

    return-object v0

    :pswitch_8
    const-string v0, "record not found"

    return-object v0

    :pswitch_9
    const-string v0, "file not found"

    return-object v0

    :pswitch_a
    const-string v0, "function not supported"

    return-object v0

    :pswitch_b
    const-string v0, "incorrect parameters in the data field"

    return-object v0

    :sswitch_1d
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, "command not allowed - secure channel - security not satisfied"

    return-object v0

    :sswitch_1f
    const-string v0, "command not allowed (no EF selected)"

    return-object v0

    :sswitch_20
    const-string v0, "conditions of use not satisfied"

    return-object v0

    :sswitch_21
    const-string v0, "referenced data invalidated"

    return-object v0

    :sswitch_22
    const-string v0, "authentication/PIN method blocked"

    return-object v0

    :sswitch_23
    const-string v0, "security status not satisfied"

    return-object v0

    :sswitch_24
    const-string v0, "command incompatible with file structure"

    return-object v0

    :sswitch_25
    return-object v1

    :sswitch_26
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "secure messaging not supported"

    return-object v0

    :sswitch_28
    const-string v0, "logical channel not supported"

    return-object v0

    :sswitch_29
    return-object v1

    :sswitch_2a
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_4

    return-object v2

    :pswitch_c
    const-string v0, "incorrect parameter P3"

    return-object v0

    :sswitch_2b
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    :sswitch_2c
    return-object v3

    :sswitch_2d
    const-string v0, "no information given, state of non-volatile memory changed"

    return-object v0

    :sswitch_2e
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_5

    goto :goto_0

    :pswitch_d
    const-string v0, "no information given, state of non-volatile memory unchanged"

    return-object v0

    :sswitch_2f
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    and-int/lit8 v0, v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command successful but after using an internal update retry routine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, or verification failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retries remaining"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    packed-switch v0, :pswitch_data_6

    goto :goto_0

    :pswitch_e
    const-string v0, "more data expected and proactive command pending"

    return-object v0

    :pswitch_f
    const-string v0, "more data expected"

    return-object v0

    :sswitch_30
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_6

    goto :goto_0

    :sswitch_31
    const-string v0, "response data available"

    return-object v0

    :sswitch_32
    const-string v0, "more data available and proactive command pending"

    return-object v0

    :sswitch_33
    const-string v0, "more data available"

    return-object v0

    :sswitch_34
    const-string v0, "selected file in termination state"

    return-object v0

    :sswitch_35
    const-string v0, "selected file invalidated"

    return-object v0

    :sswitch_36
    const-string v0, "end of file/record reached before reading Le bytes"

    return-object v0

    :sswitch_37
    const-string v0, "part of returned data may be corrupted"

    return-object v0

    :sswitch_38
    const-string v0, "no information given, state of non volatile memory unchanged"

    return-object v0

    :sswitch_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " more response bytes available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_0
    const-string v0, "unknown"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_39
        0x62 -> :sswitch_30
        0x63 -> :sswitch_2f
        0x64 -> :sswitch_2e
        0x65 -> :sswitch_2b
        0x67 -> :sswitch_2a
        0x68 -> :sswitch_26
        0x69 -> :sswitch_1d
        0x6a -> :sswitch_1c
        0x6b -> :sswitch_1b
        0x6c -> :sswitch_1a
        0x6d -> :sswitch_19
        0x6e -> :sswitch_18
        0x6f -> :sswitch_17
        0x90 -> :sswitch_16
        0x91 -> :sswitch_15
        0x92 -> :sswitch_14
        0x93 -> :sswitch_13
        0x94 -> :sswitch_e
        0x98 -> :sswitch_2
        0x9e -> :sswitch_1
        0x9f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_d
        0x4 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x40 -> :sswitch_9
        0x50 -> :sswitch_8
        0x62 -> :sswitch_7
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_12
        0x2 -> :sswitch_11
        0x4 -> :sswitch_10
        0x8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x40
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x80
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_25
        0x81 -> :sswitch_24
        0x82 -> :sswitch_23
        0x83 -> :sswitch_22
        0x84 -> :sswitch_21
        0x85 -> :sswitch_20
        0x86 -> :sswitch_1f
        0x89 -> :sswitch_1e
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_29
        0x81 -> :sswitch_28
        0x82 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_2d
        0x81 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xf1
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        0x0 -> :sswitch_38
        0x81 -> :sswitch_37
        0x82 -> :sswitch_36
        0x83 -> :sswitch_35
        0x84 -> :sswitch_34
        0xf1 -> :sswitch_33
        0xf2 -> :sswitch_32
        0xf3 -> :sswitch_31
    .end sparse-switch
.end method


# virtual methods
.method public blacklist getException()Lcom/android/internal/telephony/uicc/UniIccException;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniIccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sw1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UniIccException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileNotFound;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileNotFound;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_0
    .end packed-switch
.end method

.method public greylist success()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoResult sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->sw2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "*******"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniIccIoResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccIoResult;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

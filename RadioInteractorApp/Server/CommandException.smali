.class public Lcom/android/unisoc/telephony/server/CommandException;
.super Ljava/lang/RuntimeException;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/CommandException$Error;
    }
.end annotation


# instance fields
.field private mError:Lcom/android/unisoc/telephony/server/CommandException$Error;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/unisoc/telephony/server/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/CommandException;->mError:Lcom/android/unisoc/telephony/server/CommandException$Error;

    return-void
.end method

.method public static fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized RILIL errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSM"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_RESPONSE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_0
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_25:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_24:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_23:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_22:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_21:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_5
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_20:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_6
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_19:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_7
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_18:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_8
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_17:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_9
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_16:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_a
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_15:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_b
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_14:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_c
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_13:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_d
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_12:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_e
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_11:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_f
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_10:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_10
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_9:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_11
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_8:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_12
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_7:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_13
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_6:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_14
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_5:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_15
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_4:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_16
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_3:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_17
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_2:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_18
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OEM_ERROR_1:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_19
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_RESPONSE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1a
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->ABORTED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1b
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->DEVICE_IN_USE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1c
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1d
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1e
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NOT_PROVISIONED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_1f
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NETWORK_NOT_READY:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_20
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_SUCH_ENTRY:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_21
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_SMSC_ADDRESS:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_22
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->ENCODING_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_23
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_SMS_FORMAT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_24
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->EMPTY_RECORD:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_25
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_26
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NETWORK_REJECT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_27
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_FULL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_28
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_BUSY:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_29
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->REQUEST_RATE_LIMITED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2a
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NETWORK_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2b
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2c
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_CALL_ID:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2d
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_MODEM_STATE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2e
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_2f
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_30
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_31
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_RESOURCES:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_32
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_STATE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_33
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->MODEM_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_34
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SYSTEM_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_35
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INTERNAL_ERR:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_36
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_MEMORY:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_37
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->LCE_NOT_SUPPORTED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_38
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_SAP_CONNECT_OK_CALL_ONGOING:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_39
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_SMALL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3a
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_LARGE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3b
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_SAP_CONNECT_FAILURE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3c
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_DATA_NOT_AVAILABLE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3d
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_ALREADY_POWERED_ON:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3e
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_ALREADY_POWERED_OFF:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_3f
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_40
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_41
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_42
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_43
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_44
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_45
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_46
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_47
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_48
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_49
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4a
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->MISSING_RESOURCE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4b
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4c
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4d
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4e
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_4f
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_ABSENT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_50
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_51
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_52
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_53
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_54
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_PUK2:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_55
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->SIM_PIN2:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_56
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_57
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->GENERIC_FAILURE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_58
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    :sswitch_59
    new-instance v0, Lcom/android/unisoc/telephony/server/CommandException;

    sget-object v1, Lcom/android/unisoc/telephony/server/CommandException$Error;->INVALID_RESPONSE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/CommandException;-><init>(Lcom/android/unisoc/telephony/server/CommandException$Error;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_59
        0x1 -> :sswitch_58
        0x2 -> :sswitch_57
        0x3 -> :sswitch_56
        0x4 -> :sswitch_55
        0x5 -> :sswitch_54
        0x6 -> :sswitch_53
        0x8 -> :sswitch_52
        0x9 -> :sswitch_51
        0xa -> :sswitch_50
        0xb -> :sswitch_4f
        0xc -> :sswitch_4e
        0xd -> :sswitch_4d
        0xe -> :sswitch_4c
        0xf -> :sswitch_4b
        0x10 -> :sswitch_4a
        0x11 -> :sswitch_49
        0x12 -> :sswitch_48
        0x13 -> :sswitch_47
        0x14 -> :sswitch_46
        0x15 -> :sswitch_45
        0x16 -> :sswitch_44
        0x17 -> :sswitch_43
        0x18 -> :sswitch_42
        0x19 -> :sswitch_41
        0x1a -> :sswitch_40
        0x1b -> :sswitch_3f
        0x1d -> :sswitch_3e
        0x1e -> :sswitch_3d
        0x1f -> :sswitch_3c
        0x20 -> :sswitch_3b
        0x21 -> :sswitch_3a
        0x22 -> :sswitch_39
        0x23 -> :sswitch_38
        0x24 -> :sswitch_37
        0x25 -> :sswitch_36
        0x26 -> :sswitch_35
        0x27 -> :sswitch_34
        0x28 -> :sswitch_33
        0x29 -> :sswitch_32
        0x2a -> :sswitch_31
        0x2b -> :sswitch_30
        0x2c -> :sswitch_2f
        0x2d -> :sswitch_2e
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2c
        0x30 -> :sswitch_2b
        0x31 -> :sswitch_2a
        0x32 -> :sswitch_29
        0x33 -> :sswitch_28
        0x34 -> :sswitch_27
        0x35 -> :sswitch_26
        0x36 -> :sswitch_25
        0x37 -> :sswitch_24
        0x38 -> :sswitch_23
        0x39 -> :sswitch_22
        0x3a -> :sswitch_21
        0x3b -> :sswitch_20
        0x3c -> :sswitch_1f
        0x3d -> :sswitch_1e
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_1c
        0x40 -> :sswitch_1b
        0x41 -> :sswitch_1a
        0x42 -> :sswitch_19
        0x1f5 -> :sswitch_18
        0x1f6 -> :sswitch_17
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_15
        0x1f9 -> :sswitch_14
        0x1fa -> :sswitch_13
        0x1fb -> :sswitch_12
        0x1fc -> :sswitch_11
        0x1fd -> :sswitch_10
        0x1fe -> :sswitch_f
        0x1ff -> :sswitch_e
        0x200 -> :sswitch_d
        0x201 -> :sswitch_c
        0x202 -> :sswitch_b
        0x203 -> :sswitch_a
        0x204 -> :sswitch_9
        0x205 -> :sswitch_8
        0x206 -> :sswitch_7
        0x207 -> :sswitch_6
        0x208 -> :sswitch_5
        0x209 -> :sswitch_4
        0x20a -> :sswitch_3
        0x20b -> :sswitch_2
        0x20c -> :sswitch_1
        0x20d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCommandError()Lcom/android/unisoc/telephony/server/CommandException$Error;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/CommandException;->mError:Lcom/android/unisoc/telephony/server/CommandException$Error;

    return-object v0
.end method

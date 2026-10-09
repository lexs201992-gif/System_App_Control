.class public Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;
.super Ljava/lang/Object;
.source "IccCardApplicationStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;,
        Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;,
        Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;
    }
.end annotation


# instance fields
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

.field public app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

.field public perso_substate:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

.field public pin1:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IccCardApplicationStatus"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public AppStateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppStateFromRILInt: bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use APPSTATE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_READY:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_PIN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_DETECTED:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public AppTypeFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTypeFromRILInt: bad RIL_AppType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use APPTYPE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_ISIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_CSIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_RUIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_USIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_SIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public PersoSubstateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersoSubstateFromRILInt: bad substate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use PERSOSUBSTATE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_LOCK_PERMANENTLY:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_12
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_13
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_14
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_15
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_16
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_17
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_18
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    goto :goto_0

    :pswitch_19
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public PinStateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;
    .locals 3

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PinStateFromRILInt: bad pin state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " use PINSTATE_UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_DISABLED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_state:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_state:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    sget-object v3, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    if-ne v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->perso_substate:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    sget-object v2, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_CSIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    sget-object v2, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_USIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    sget-object v2, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_ISIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->pin1:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->pin2:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

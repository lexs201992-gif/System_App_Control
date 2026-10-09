.class public Lcom/unipnp/server/UnionLocalService;
.super Lcom/android/server/unipnp/HookUnionLocalService;
.source "UnionLocalService.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sAmsInternalInstance:Landroid/app/ActivityManagerInternal;

.field private static sLocalServiceInstance:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

.field private static sUnionAmsInternalInstance:Lcom/unipnp/app/absclass/UnionAmsInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/UnionLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/unipnp/HookUnionLocalService;-><init>()V

    return-void
.end method

.method public static varargs exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUmsLocalService()Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;->exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec FeatureId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Fun : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " localService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static varargs exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUmsLocalService()Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v2, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exec FeatureName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Fun : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " localService : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static getAmsInternal()Landroid/app/ActivityManagerInternal;
    .locals 2

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sAmsInternalInstance:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    sput-object v0, Lcom/unipnp/server/UnionLocalService;->sAmsInternalInstance:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    const-string v1, "getAmsInternal always null."

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sAmsInternalInstance:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method public static getCustFreezerList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getCustFreezerList"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppStartScene"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getMemoryTrimLevel()I
    .locals 2

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUnionAmsInternal()Lcom/unipnp/app/absclass/UnionAmsInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unipnp/app/absclass/UnionAmsInternal;->getMemoryTrimLevel()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public static getTopApp()Lcom/unipnp/app/ProcessStateInfo;
    .locals 6

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUnionAmsInternal()Lcom/unipnp/app/absclass/UnionAmsInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unipnp/app/absclass/UnionAmsInternal;->getRunningProcesses()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unipnp/app/ProcessStateInfo;

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/unipnp/app/ProcessStateInfo;->curAdj:I

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/unipnp/app/ProcessStateInfo;->curAdjType:Ljava/lang/String;

    const-string v5, "top-activity"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUmsLocalService()Lcom/unipnp/app/absclass/UmsLocalServiceInternal;
    .locals 2

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sLocalServiceInstance:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    sput-object v0, Lcom/unipnp/server/UnionLocalService;->sLocalServiceInstance:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    const-string v1, "getUmsLocalService always null."

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sLocalServiceInstance:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    return-object v0
.end method

.method public static getUnionAmsInternal()Lcom/unipnp/app/absclass/UnionAmsInternal;
    .locals 2

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sUnionAmsInternalInstance:Lcom/unipnp/app/absclass/UnionAmsInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/unipnp/app/absclass/UnionAmsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/absclass/UnionAmsInternal;

    sput-object v0, Lcom/unipnp/server/UnionLocalService;->sUnionAmsInternalInstance:Lcom/unipnp/app/absclass/UnionAmsInternal;

    if-nez v0, :cond_0

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    const-string v1, "getUnionAmsInternal always null."

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unipnp/server/UnionLocalService;->sUnionAmsInternalInstance:Lcom/unipnp/app/absclass/UnionAmsInternal;

    return-object v0
.end method

.method public static isKeyThreadGroupApp(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "isKeyThreadGroupApp"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppStartScene"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isUserAMonkeyNoCheck()Z
    .locals 2

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getAmsInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isUserAMonkeyNoCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isXTestStatus()Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "XTestScene"

    const-string v3, "isXTestStatus"

    invoke-static {v2, v3, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static updateAdjIfNeeded(Lcom/unipnp/app/ProcessStateInfo;)Z
    .locals 3

    const-string v0, "updateAdjIfNeeded"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OomAdjustFeature"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getOverrideEnterAnimation(Ljava/lang/String;ZIILandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 3

    nop

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v0, v1, v2, p5}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "getOverrideEnterAnimation"

    invoke-static {v1, v2, v0}, Lcom/unipnp/server/UnionLocalService;->exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/animation/Animation;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/unipnp/server/UnionLocalService$1;

    invoke-direct {v1, p0}, Lcom/unipnp/server/UnionLocalService$1;-><init>(Lcom/unipnp/server/UnionLocalService;)V

    :goto_0
    return-object v1
.end method

.method public getOverrideExitAnimation(Ljava/lang/String;Z)Landroid/view/animation/Animation;
    .locals 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xd

    const-string v2, "getOverrideExitAnimation"

    invoke-static {v1, v2, v0}, Lcom/unipnp/server/UnionLocalService;->exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/animation/Animation;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public handlePreforkStartProcess(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move-object/from16 v22, p22

    new-instance v23, Lcom/unipnp/app/PreforkArgs;

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lcom/unipnp/app/PreforkArgs;-><init>(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)V

    const-string v1, "handlePreforkStartProcess"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PreforkProcessScene"

    invoke-static {v3, v1, v2}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Process$ProcessStartResult;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/os/Process$ProcessStartResult;

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public isKeepAppAlive(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "isKeepAppAlive"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "KeepAppAliveScene"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public modifyTheKeyThreadGroup(Ljava/lang/String;I)Z
    .locals 3

    invoke-static {p1}, Lcom/unipnp/server/UnionLocalService;->isKeyThreadGroupApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unipnp/server/UnionLocalService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyTheKeyThreadGroup processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pkgSupportRecentThumbnail(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pkgSupportRecentThumbnail"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SnapShotFeature"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public preforkStart(Ljava/lang/String;)V
    .locals 3

    const-string v0, "preforkStart"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PreforkProcessScene"

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public schedStartPreForkedProcesses(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PreforkProcessScene"

    const-string v2, "schedStartPreForkedProcesses"

    invoke-static {v1, v2, v0}, Lcom/unipnp/server/UnionLocalService;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public useUnionAnim(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "useUnionAnim"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2, v0, v1}, Lcom/unipnp/server/UnionLocalService;->exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

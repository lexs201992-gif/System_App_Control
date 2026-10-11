.class public Landroid/media/AudioManagerEx;
.super Landroid/media/UnisocAudioManager;
.source "AudioManagerEx.java"


# annotations
.annotation runtime Landroid/annotation/UnisocHiddenApi;
.end annotation


# static fields
.field private static blacklist AUDIO_SERVICEEX:Ljava/lang/String; = null

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "AudioManagerEx"

.field private static blacklist sService:Landroid/media/IAudioServiceEx;


# instance fields
.field private blacklist mApplicationContext:Landroid/content/Context;

.field private final blacklist mICallBack:Landroid/os/IBinder;

.field private blacklist mOriginalContext:Landroid/content/Context;

.field private final blacklist mUseFixedVolume:Z

.field private final blacklist mUseVolumeKeySounds:Z

.field private blacklist mVolumeKeyUpTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "audio_ex"

    sput-object v0, Landroid/media/AudioManagerEx;->AUDIO_SERVICEEX:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/media/UnisocAudioManager;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/AudioManagerEx;->mUseVolumeKeySounds:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioManagerEx;->mUseFixedVolume:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/media/UnisocAudioManager;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    invoke-direct {p0, p1}, Landroid/media/AudioManagerEx;->setContext(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/media/AudioManagerEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111022c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManagerEx;->mUseVolumeKeySounds:Z

    invoke-direct {p0}, Landroid/media/AudioManagerEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioManagerEx;->mUseFixedVolume:Z

    return-void
.end method

.method private blacklist getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioManagerEx;->mOriginalContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/AudioManagerEx;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/media/AudioManagerEx;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method private static blacklist getServiceEx()Landroid/media/IAudioServiceEx;
    .locals 2

    sget-object v0, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/media/AudioManagerEx;->AUDIO_SERVICEEX:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioServiceEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioServiceEx;

    move-result-object v1

    sput-object v1, Landroid/media/AudioManagerEx;->sService:Landroid/media/IAudioServiceEx;

    return-object v1
.end method

.method private blacklist setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioManagerEx;->mOriginalContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/media/AudioManagerEx;->mOriginalContext:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist callOffToExitVoiceBigVolume([II)V
    .locals 3
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioServiceEx;->callOffToExitVoiceBigVolume([II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getFmState()Z
    .locals 3

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioServiceEx;->getFmState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist getStreamBigVolumeIndex(I)I
    .locals 3
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioServiceEx;->getStreamBigVolumeIndex(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist isInMusicBigVolumeMode(II)Z
    .locals 3
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/media/IAudioServiceEx;->isInMusicBigVolumeMode(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setBigVolumeMode(IIZ[IIIIII)Z
    .locals 12
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v11

    move-object v1, v11

    move v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    :try_start_0
    invoke-interface/range {v1 .. v10}, Landroid/media/IAudioServiceEx;->setBigVolumeMode(IIZ[IIIIII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDeviceConnectionStateForFM(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v6

    :try_start_0
    iget-object v5, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioServiceEx;->setDeviceConnectionStateForFM(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioManagerEx"

    const-string v2, "Dead object in setDeviceConnectionStateForFM "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setFmSpeakerOn(Z)V
    .locals 4
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/media/IAudioServiceEx;->setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setFmSpeakerOn "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist setMediaSpeakerOn(Z)V
    .locals 4
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManagerEx;->mICallBack:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/AudioManagerEx;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/media/IAudioServiceEx;->setForceUseSpeaker(IZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AudioManagerEx"

    const-string v3, "Dead object in setMediaSpeakerOn "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public blacklist volumeDownToExitBigVolume([IIIII)Z
    .locals 7
    .annotation runtime Landroid/annotation/UnisocHiddenApi;
    .end annotation

    invoke-static {}, Landroid/media/AudioManagerEx;->getServiceEx()Landroid/media/IAudioServiceEx;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioServiceEx;->volumeDownToExitBigVolume([IIIII)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

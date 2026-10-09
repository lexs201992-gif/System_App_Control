.class Landroidx/camera/extensions/impl/RequestUpdateProcessorImpls$1;
.super Ljava/lang/Object;
.source "RequestUpdateProcessorImpls.java"

# interfaces
.implements Landroidx/camera/extensions/impl/RequestUpdateProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/RequestUpdateProcessorImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageFormatUpdate(I)V
    .locals 0

    return-void
.end method

.method public onOutputSurface(Landroid/view/Surface;I)V
    .locals 0

    return-void
.end method

.method public onResolutionUpdate(Landroid/util/Size;)V
    .locals 0

    return-void
.end method

.method public process(Landroid/hardware/camera2/TotalCaptureResult;)Landroidx/camera/extensions/impl/CaptureStageImpl;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

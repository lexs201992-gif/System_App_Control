.class public Lglance/content/sdk/model/Video;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private customizationType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customizationType"
    .end annotation
.end field

.field private facebookVideo:Lglance/content/sdk/model/Video$FacebookVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "facebook"
    .end annotation
.end field

.field private instagramVideo:Lglance/content/sdk/model/Video$InstagramVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "insta"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private youkuVideo:Lglance/content/sdk/model/Video$YoukuVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "youku"
    .end annotation
.end field

.field private youtubeVideo:Lglance/content/sdk/model/Video$YoutubeVideo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "youtube"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lglance/content/sdk/model/Video$FacebookVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput p1, p0, Lglance/content/sdk/model/Video;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/Video$InstagramVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    iput p1, p0, Lglance/content/sdk/model/Video;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/Video$YoukuVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lglance/content/sdk/model/Video;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/Video$YoutubeVideo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    iput p1, p0, Lglance/content/sdk/model/Video;->type:I

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/Video;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/Video;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lglance/content/sdk/model/Video;->clone()Lglance/content/sdk/model/Video;

    move-result-object p0

    return-object p0
.end method

.method public getCustomizationType()I
    .locals 0

    iget p0, p0, Lglance/content/sdk/model/Video;->customizationType:I

    return p0
.end method

.method public getFacebookVideo()Lglance/content/sdk/model/Video$FacebookVideo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstagramVideo()Lglance/content/sdk/model/Video$InstagramVideo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lglance/content/sdk/model/Video;->type:I

    return p0
.end method

.method public getYoukuVideo()Lglance/content/sdk/model/Video$YoukuVideo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getYoutubeVideo()Lglance/content/sdk/model/Video$YoutubeVideo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setCustomizationType(I)V
    .locals 0

    iput p1, p0, Lglance/content/sdk/model/Video;->customizationType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lglance/content/sdk/model/Video;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "customizationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lglance/content/sdk/model/Video;->customizationType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

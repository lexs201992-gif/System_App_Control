.class public Lglance/content/sdk/model/Peek;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field private articlePeek:Lglance/content/sdk/model/ArticlePeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "articlePeek"
    .end annotation
.end field

.field private liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liveVideoPeek"
    .end annotation
.end field

.field private nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nativeVideoPeek"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private videoPeek:Lglance/content/sdk/model/VideoPeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoPeek"
    .end annotation
.end field

.field private webPeek:Lglance/content/sdk/model/WebPeek;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "webPeek"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/ArticlePeek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    const/4 p1, 0x1

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/LiveVideoPeek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;

    const/4 p1, 0x6

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/NativeVideoPeek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;

    const/4 p1, 0x4

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/VideoPeek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    const/4 p1, 0x2

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/WebPeek;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->webPeek:Lglance/content/sdk/model/WebPeek;

    const/4 p1, 0x3

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/Peek;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglance/content/sdk/model/Peek;

    iget-object v1, p0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lglance/content/sdk/model/ArticlePeek;->clone()Lglance/content/sdk/model/ArticlePeek;

    move-result-object v1

    iput-object v1, v0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    :cond_0
    iget-object v1, p0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lglance/content/sdk/model/VideoPeek;->clone()Lglance/content/sdk/model/VideoPeek;

    move-result-object v1

    iput-object v1, v0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    :cond_1
    iget-object v1, p0, Lglance/content/sdk/model/Peek;->nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lglance/content/sdk/model/NativeVideoPeek;->clone()Lglance/content/sdk/model/NativeVideoPeek;

    move-result-object v1

    iput-object v1, v0, Lglance/content/sdk/model/Peek;->nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;

    :cond_2
    iget-object p0, p0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lglance/content/sdk/model/LiveVideoPeek;->clone()Lglance/content/sdk/model/LiveVideoPeek;

    move-result-object p0

    iput-object p0, v0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lglance/content/sdk/model/Peek;->clone()Lglance/content/sdk/model/Peek;

    move-result-object p0

    return-object p0
.end method

.method public getArticlePeek()Lglance/content/sdk/model/ArticlePeek;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    return-object p0
.end method

.method public getLiveVideoPeek()Lglance/content/sdk/model/LiveVideoPeek;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;

    return-object p0
.end method

.method public getNativeVideoPeek()Lglance/content/sdk/model/NativeVideoPeek;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lglance/content/sdk/model/Peek;->type:I

    return p0
.end method

.method public getVideoPeek()Lglance/content/sdk/model/VideoPeek;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    return-object p0
.end method

.method public getWebPeek()Lglance/content/sdk/model/WebPeek;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->webPeek:Lglance/content/sdk/model/WebPeek;

    return-object p0
.end method

.method public setArticlePeek(Lglance/content/sdk/model/ArticlePeek;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    return-void
.end method

.method public setLiveVideoPeek(Lglance/content/sdk/model/LiveVideoPeek;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lglance/content/sdk/model/Peek;->type:I

    return-void
.end method

.method public setVideoPeek(Lglance/content/sdk/model/VideoPeek;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Peek{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lglance/content/sdk/model/Peek;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", articlePeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Peek;->articlePeek:Lglance/content/sdk/model/ArticlePeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Peek;->videoPeek:Lglance/content/sdk/model/VideoPeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", webPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Peek;->webPeek:Lglance/content/sdk/model/WebPeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nativeVideoPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Peek;->nativeVideoPeek:Lglance/content/sdk/model/NativeVideoPeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liveVideoPeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/Peek;->liveVideoPeek:Lglance/content/sdk/model/LiveVideoPeek;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

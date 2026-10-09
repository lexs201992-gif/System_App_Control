.class public Lglance/content/sdk/model/GlanceInteractionData;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private glanceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "glanceId"
    .end annotation
.end field

.field private likeCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likeCount"
    .end annotation
.end field

.field private liveViewCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "liveViewCount"
    .end annotation
.end field

.field private shareCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shareCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/GlanceInteractionData;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/GlanceInteractionData;
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

    invoke-virtual {p0}, Lglance/content/sdk/model/GlanceInteractionData;->clone()Lglance/content/sdk/model/GlanceInteractionData;

    move-result-object p0

    return-object p0
.end method

.method public getGlanceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/GlanceInteractionData;->glanceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLikeCount()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/GlanceInteractionData;->likeCount:Ljava/lang/Long;

    return-object p0
.end method

.method public getLiveViewCount()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/GlanceInteractionData;->liveViewCount:Ljava/lang/Long;

    return-object p0
.end method

.method public getShareCount()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/GlanceInteractionData;->shareCount:Ljava/lang/Long;

    return-object p0
.end method

.method public setGlanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/GlanceInteractionData;->glanceId:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/GlanceInteractionData;->likeCount:Ljava/lang/Long;

    return-void
.end method

.method public setLiveViewCount(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/GlanceInteractionData;->liveViewCount:Ljava/lang/Long;

    return-void
.end method

.method public setShareCount(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/GlanceInteractionData;->shareCount:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlanceInteractionData{glanceId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/GlanceInteractionData;->glanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', likeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/GlanceInteractionData;->likeCount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shareCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/GlanceInteractionData;->shareCount:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

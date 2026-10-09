.class public Lglance/content/sdk/model/WebPeek;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field appMeta:Lglance/content/sdk/model/AppMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appMeta"
    .end annotation
.end field

.field private hardwareAccelerationEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hardwareAccelerationEnabled"
    .end annotation
.end field

.field private loadAndroidJs:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "loadAndroidJs"
    .end annotation
.end field

.field private originalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalUrl"
    .end annotation
.end field

.field private summary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "summary"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field

.field private urlSuffix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urlSuffix"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/WebPeek;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lglance/content/sdk/model/WebPeek;->hardwareAccelerationEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lglance/content/sdk/model/WebPeek;->hardwareAccelerationEnabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lglance/content/sdk/model/WebPeek;->url:Ljava/lang/String;

    iput-object v0, p0, Lglance/content/sdk/model/WebPeek;->url:Ljava/lang/String;

    iget-object v0, p1, Lglance/content/sdk/model/WebPeek;->originalUrl:Ljava/lang/String;

    iput-object v0, p0, Lglance/content/sdk/model/WebPeek;->originalUrl:Ljava/lang/String;

    iget-object v0, p1, Lglance/content/sdk/model/WebPeek;->loadAndroidJs:Ljava/lang/Boolean;

    iput-object v0, p0, Lglance/content/sdk/model/WebPeek;->loadAndroidJs:Ljava/lang/Boolean;

    iget-object v0, p1, Lglance/content/sdk/model/WebPeek;->summary:Ljava/lang/String;

    iput-object v0, p0, Lglance/content/sdk/model/WebPeek;->summary:Ljava/lang/String;

    iget-object p1, p1, Lglance/content/sdk/model/WebPeek;->appMeta:Lglance/content/sdk/model/AppMeta;

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->appMeta:Lglance/content/sdk/model/AppMeta;

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/WebPeek;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/WebPeek;
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

    invoke-virtual {p0}, Lglance/content/sdk/model/WebPeek;->clone()Lglance/content/sdk/model/WebPeek;

    move-result-object p0

    return-object p0
.end method

.method public getAppMeta()Lglance/content/sdk/model/AppMeta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->appMeta:Lglance/content/sdk/model/AppMeta;

    return-object p0
.end method

.method public getHardwareAccelerationEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->hardwareAccelerationEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLoadAndroidJs()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->loadAndroidJs:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->originalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->summary:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->urlSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setAppMeta(Lglance/content/sdk/model/AppMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->appMeta:Lglance/content/sdk/model/AppMeta;

    return-void
.end method

.method public setHardwareAccelerationEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->hardwareAccelerationEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setLoadAndroidJs(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->loadAndroidJs:Ljava/lang/Boolean;

    return-void
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->summary:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/WebPeek;->urlSuffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebPeek {loadAndroidJs=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->loadAndroidJs:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'hardwareAccelerationEnabled=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->hardwareAccelerationEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originalUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->originalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urlSuffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/WebPeek;->urlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/WebPeek;->appMeta:Lglance/content/sdk/model/AppMeta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public Lglance/content/sdk/model/AppMeta;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appName"
    .end annotation
.end field

.field autoAppOpen:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "autoAppOpen"
    .end annotation
.end field

.field brandBgImage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brandBgImage"
    .end annotation
.end field

.field brandColor:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "brandColor"
    .end annotation
.end field

.field packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "packageName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/AppMeta;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/AppMeta;
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

    invoke-virtual {p0}, Lglance/content/sdk/model/AppMeta;->clone()Lglance/content/sdk/model/AppMeta;

    move-result-object p0

    return-object p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoAppOpen()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->autoAppOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getBrandBgImage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->brandBgImage:Ljava/lang/String;

    return-object p0
.end method

.method public getBrandColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->brandColor:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppMeta;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAutoAppOpen(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppMeta;->autoAppOpen:Ljava/lang/Boolean;

    return-void
.end method

.method public setBrandBgImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppMeta;->brandBgImage:Ljava/lang/String;

    return-void
.end method

.method public setBrandColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppMeta;->brandColor:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppMeta;->packageName:Ljava/lang/String;

    return-void
.end method

.method public shouldAutoAppOpen(Z)Z
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->autoAppOpen:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppMeta{appName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/AppMeta;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/AppMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', autoAppOpen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/AppMeta;->autoAppOpen:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', brandColor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/AppMeta;->brandColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', brandBgImage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/AppMeta;->brandBgImage:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

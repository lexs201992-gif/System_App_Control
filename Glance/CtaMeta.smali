.class public Lglance/content/sdk/model/CtaMeta;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field ctaDisplay:Lglance/content/sdk/model/CtaDisplay;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctaDisplay"
    .end annotation
.end field

.field openInBg:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openInBg"
    .end annotation
.end field

.field originalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalUrl"
    .end annotation
.end field

.field shouldUnlock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldUnlock"
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/CtaMeta;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/CtaMeta;
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

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->clone()Lglance/content/sdk/model/CtaMeta;

    move-result-object p0

    return-object p0
.end method

.method public getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->ctaDisplay:Lglance/content/sdk/model/CtaDisplay;

    return-object p0
.end method

.method public getOpenInBg()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->openInBg:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->originalUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getShouldUnlock()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->shouldUnlock:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setCtaDisplay(Lglance/content/sdk/model/CtaDisplay;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->ctaDisplay:Lglance/content/sdk/model/CtaDisplay;

    return-void
.end method

.method public setOpenInBg(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->openInBg:Ljava/lang/Boolean;

    return-void
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->originalUrl:Ljava/lang/String;

    return-void
.end method

.method public setShouldUnlock(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->shouldUnlock:Ljava/lang/Boolean;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/CtaMeta;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CtaMeta{url=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/CtaMeta;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', originalUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/CtaMeta;->originalUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', shouldUnlock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/CtaMeta;->shouldUnlock:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', openInBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/CtaMeta;->openInBg:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', ctaDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/CtaMeta;->ctaDisplay:Lglance/content/sdk/model/CtaDisplay;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

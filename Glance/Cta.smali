.class public Lglance/content/sdk/model/Cta;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field appCta:Lglance/content/sdk/model/AppCta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appCta"
    .end annotation
.end field

.field ctaType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ctaType"
    .end annotation
.end field

.field openUrlCta:Lglance/content/sdk/model/CtaMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "openUrlCta"
    .end annotation
.end field

.field originalUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originalUrl"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field shouldUnlock:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shouldUnlock"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/AppCta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    iput-object p1, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    return-void
.end method

.method public constructor <init>(Lglance/content/sdk/model/CtaMeta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    iput-object p1, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lglance/content/sdk/model/CtaMeta;

    invoke-direct {v0, p1}, Lglance/content/sdk/model/CtaMeta;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lglance/content/sdk/model/Cta;-><init>(Lglance/content/sdk/model/CtaMeta;)V

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/Cta;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglance/content/sdk/model/Cta;

    iget-object v1, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lglance/content/sdk/model/CtaMeta;->clone()Lglance/content/sdk/model/CtaMeta;

    move-result-object v1

    iput-object v1, v0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    :cond_0
    iget-object p0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lglance/content/sdk/model/AppCta;->clone()Lglance/content/sdk/model/AppCta;

    move-result-object p0

    iput-object p0, v0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lglance/content/sdk/model/Cta;->clone()Lglance/content/sdk/model/Cta;

    move-result-object p0

    return-object p0
.end method

.method public getAppCta()Lglance/content/sdk/model/AppCta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    return-object p0
.end method

.method public getCtaType()I
    .locals 0

    iget p0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    return p0
.end method

.method public getOpenUrlCta()Lglance/content/sdk/model/CtaMeta;
    .locals 3

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lglance/content/sdk/model/Cta;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v1, Lglance/content/sdk/model/CtaMeta;

    invoke-direct {v1, v0}, Lglance/content/sdk/model/CtaMeta;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->shouldUnlock:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Lglance/content/sdk/model/CtaMeta;->setShouldUnlock(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->originalUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lglance/content/sdk/model/CtaMeta;->setOriginalUrl(Ljava/lang/String;)V

    new-instance v0, Lglance/content/sdk/model/CtaDisplay;

    new-instance v2, Lglance/content/sdk/model/CtaDisplayText;

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->text:Ljava/lang/String;

    invoke-direct {v2, p0}, Lglance/content/sdk/model/CtaDisplayText;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lglance/content/sdk/model/CtaDisplay;-><init>(Lglance/content/sdk/model/CtaDisplayText;)V

    invoke-virtual {v1, v0}, Lglance/content/sdk/model/CtaMeta;->setCtaDisplay(Lglance/content/sdk/model/CtaDisplay;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getShouldUnlock()Ljava/lang/Boolean;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->shouldUnlock:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {p0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getShouldUnlock()Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :cond_2
    iget-object p0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getShouldUnlock()Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {v0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {v0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaDisplay;->getCtaDisplayText()Lglance/content/sdk/model/CtaDisplayText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {p0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaDisplay;->getCtaDisplayText()Lglance/content/sdk/model/CtaDisplayText;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaDisplayText;->getText()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/CtaDisplay;->getCtaDisplayText()Lglance/content/sdk/model/CtaDisplayText;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getCtaDisplay()Lglance/content/sdk/model/CtaDisplay;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaDisplay;->getCtaDisplayText()Lglance/content/sdk/model/CtaDisplayText;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaDisplayText;->getText()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    const-string v1, ""

    if-eqz v0, :cond_2

    iget-object v0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {p0}, Lglance/content/sdk/model/AppCta;->getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;

    move-result-object p0

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    iget-object p0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lglance/content/sdk/model/CtaMeta;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public setAppCta(Lglance/content/sdk/model/AppCta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    return-void
.end method

.method public setCtaType(I)V
    .locals 0

    iput p1, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    return-void
.end method

.method public setOpenUrlCta(Lglance/content/sdk/model/CtaMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    if-eqz p0, :cond_0

    new-instance v0, Lglance/content/sdk/model/CtaDisplay;

    new-instance v1, Lglance/content/sdk/model/CtaDisplayText;

    invoke-direct {v1, p1}, Lglance/content/sdk/model/CtaDisplayText;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lglance/content/sdk/model/CtaDisplay;-><init>(Lglance/content/sdk/model/CtaDisplayText;)V

    invoke-virtual {p0, v0}, Lglance/content/sdk/model/CtaMeta;->setCtaDisplay(Lglance/content/sdk/model/CtaDisplay;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cta{text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/Cta;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Cta;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'appCta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Cta;->appCta:Lglance/content/sdk/model/AppCta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', openUrlCta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/Cta;->openUrlCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', ctaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lglance/content/sdk/model/Cta;->ctaType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

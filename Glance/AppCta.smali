.class public Lglance/content/sdk/model/AppCta;
.super Ljava/lang/Object;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field appInstallCta:Lglance/content/sdk/model/CtaMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appInstallCta"
    .end annotation
.end field

.field appInstalledCta:Lglance/content/sdk/model/CtaMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appInstalledCta"
    .end annotation
.end field

.field appInstallingCta:Lglance/content/sdk/model/CtaMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appInstallingCta"
    .end annotation
.end field

.field appMeta:Lglance/content/sdk/model/AppMeta;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "appMeta"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lglance/content/sdk/model/AppCta;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lglance/content/sdk/model/AppCta;
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

    invoke-virtual {p0}, Lglance/content/sdk/model/AppCta;->clone()Lglance/content/sdk/model/AppCta;

    move-result-object p0

    return-object p0
.end method

.method public getAppInstallCta()Lglance/content/sdk/model/CtaMeta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppCta;->appInstallCta:Lglance/content/sdk/model/CtaMeta;

    return-object p0
.end method

.method public getAppInstalledCta()Lglance/content/sdk/model/CtaMeta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppCta;->appInstalledCta:Lglance/content/sdk/model/CtaMeta;

    return-object p0
.end method

.method public getAppInstallingCta()Lglance/content/sdk/model/CtaMeta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppCta;->appInstallingCta:Lglance/content/sdk/model/CtaMeta;

    return-object p0
.end method

.method public getAppMeta()Lglance/content/sdk/model/AppMeta;
    .locals 0

    iget-object p0, p0, Lglance/content/sdk/model/AppCta;->appMeta:Lglance/content/sdk/model/AppMeta;

    return-object p0
.end method

.method public setAppInstallCta(Lglance/content/sdk/model/CtaMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppCta;->appInstallCta:Lglance/content/sdk/model/CtaMeta;

    return-void
.end method

.method public setAppInstalledCta(Lglance/content/sdk/model/CtaMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppCta;->appInstalledCta:Lglance/content/sdk/model/CtaMeta;

    return-void
.end method

.method public setAppInstallingCta(Lglance/content/sdk/model/CtaMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppCta;->appInstallingCta:Lglance/content/sdk/model/CtaMeta;

    return-void
.end method

.method public setAppMeta(Lglance/content/sdk/model/AppMeta;)V
    .locals 0

    iput-object p1, p0, Lglance/content/sdk/model/AppCta;->appMeta:Lglance/content/sdk/model/AppMeta;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppCta{appInstallCta=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lglance/content/sdk/model/AppCta;->appInstallCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', appInstalledCta=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/AppCta;->appInstalledCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', appInstallingCta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lglance/content/sdk/model/AppCta;->appInstallingCta:Lglance/content/sdk/model/CtaMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', appMeta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lglance/content/sdk/model/AppCta;->appMeta:Lglance/content/sdk/model/AppMeta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

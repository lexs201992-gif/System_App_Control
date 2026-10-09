.class public Lcom/unipnp/server/action/TunningBoost$BoostInfo;
.super Ljava/lang/Object;
.source "TunningBoost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unipnp/server/action/TunningBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoostInfo"
.end annotation


# instance fields
.field duration:J

.field hintType:I

.field pkgName:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->pkgName:Ljava/lang/String;

    iput p2, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->hintType:I

    iput-wide p3, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->duration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->timeStamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/unipnp/server/action/TunningBoost$BoostInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;

    iget-object v2, v0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->hintType:I

    iget v3, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->hintType:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->duration:J

    iget-wide v4, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->duration:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoostInfo{pkgName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hintType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->hintType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/unipnp/server/action/TunningBoost$BoostInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

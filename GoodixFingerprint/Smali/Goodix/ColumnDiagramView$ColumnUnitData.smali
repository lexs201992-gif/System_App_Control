.class public Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;
.super Ljava/lang/Object;
.source "ColumnDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/widget/ColumnDiagramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnUnitData"
.end annotation


# instance fields
.field private mColor:I

.field private mValue:I


# virtual methods
.method public getColor()I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;->mColor:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;->mValue:I

    return p0
.end method

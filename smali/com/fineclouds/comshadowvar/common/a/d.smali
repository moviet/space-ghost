.class public Lcom/fineclouds/spaceghostq1/common/a/d;
.super Landroid/text/style/CharacterStyle;
.source "MutableForegroundColorSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/fineclouds/spaceghostq1/common/a/d;->a:I

    .line 24
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/fineclouds/spaceghostq1/common/a/d;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 18
    return-void
.end method

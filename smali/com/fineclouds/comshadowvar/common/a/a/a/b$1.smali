.class Lcom/fineclouds/spaceghostq1/common/a/a/a/b$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExplosionField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/common/a/a/a/b;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/a/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/b$1;->a:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/a/b$1;->a:Lcom/fineclouds/spaceghostq1/common/a/a/a/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/a/b;->a(Lcom/fineclouds/spaceghostq1/common/a/a/a/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

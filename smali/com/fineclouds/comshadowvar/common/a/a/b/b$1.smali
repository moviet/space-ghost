.class Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 129
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;

    .line 130
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iget-object v1, v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;->b:I

    iget v3, v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;->c:I

    iget v4, v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;->d:I

    iget v5, v5, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$d;->e:I

    invoke-static/range {v0 .. v5}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->a(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->a(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 135
    return-void
.end method

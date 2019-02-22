.class Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;
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
    .line 150
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;

    .line 153
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v2, v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->a(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;Lcom/fineclouds/spaceghostq1/common/a/a/b/b$a;)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->b:Lcom/fineclouds/spaceghostq1/common/a/a/b/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/common/a/a/b/b;->b(Lcom/fineclouds/spaceghostq1/common/a/a/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/common/a/a/b/b$2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

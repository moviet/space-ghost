.class Lcom/fineclouds/spaceghostq1/home/a$2;
.super Ljava/lang/Object;
.source "DualHomeAdapter.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/home/a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/b",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/home/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/home/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->b:Lcom/fineclouds/spaceghostq1/home/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/home/a$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->b:Lcom/fineclouds/spaceghostq1/home/a;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    .line 113
    iget-object v2, v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v3, v3, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->b:Lcom/fineclouds/spaceghostq1/home/a;

    iget-object v2, v2, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 116
    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/home/a$2;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v2, v0}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemRemoved(I)V

    goto :goto_0

    .line 119
    :cond_1
    return-void
.end method

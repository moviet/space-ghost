.class Lcom/fineclouds/spaceghostq1/home/a$1;
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
    .line 122
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/home/a$1;->b:Lcom/fineclouds/spaceghostq1/home/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/home/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/home/a$1;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$1;->b:Lcom/fineclouds/spaceghostq1/home/a;

    iget-object v0, v0, Lcom/fineclouds/spaceghostq1/home/a;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/home/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/home/a$1;->b:Lcom/fineclouds/spaceghostq1/home/a;

    invoke-virtual {v0, v2}, Lcom/fineclouds/spaceghostq1/home/a;->notifyItemInserted(I)V

    .line 127
    return-void
.end method

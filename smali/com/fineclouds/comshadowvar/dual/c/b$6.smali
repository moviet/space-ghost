.class Lcom/fineclouds/spaceghostq1/dual/c/b$6;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->b()V
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
        "Ljava/util/List",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/dual/c/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/b;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$6;->a:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 286
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$6;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$6;->a:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/c$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/fineclouds/spaceghostq1/c$c;->a(Ljava/util/List;)V

    .line 290
    return-void
.end method

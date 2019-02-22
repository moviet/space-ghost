.class Lcom/fineclouds/spaceghostq1/dual/c/b$3;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements La/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
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

.field final synthetic b:Lcom/fineclouds/spaceghostq1/dual/c/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 199
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/c$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/fineclouds/spaceghostq1/c$c;->b()V

    .line 203
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->b(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$3;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-interface {v0, v1}, Lcom/fineclouds/spaceghostq1/c$c;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 204
    return-void
.end method

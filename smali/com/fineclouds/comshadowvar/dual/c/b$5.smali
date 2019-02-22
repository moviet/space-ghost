.class Lcom/fineclouds/spaceghostq1/dual/c/b$5;
.super Ljava/lang/Object;
.source "DualSpacePresenterImpl.java"

# interfaces
.implements La/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/c/e",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/dual/c/b;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/b;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$5;->a:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;
    .locals 3

    .prologue
    .line 220
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call: appModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$5;->a:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->c(Lcom/fineclouds/spaceghostq1/dual/c/b;)Lcom/fineclouds/spaceghostq1/dual/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/b/c/f;

    .line 225
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$5;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    move-result-object v0

    return-object v0
.end method

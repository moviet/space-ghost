.class Lcom/fineclouds/spaceghostq1/dual/c/b$1;
.super La/j;
.source "DualSpacePresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/j",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
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
    .line 74
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, La/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/dual/c/b;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/dual/c/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dualspace_launchapp"

    const-string v2, "launchApp"

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v3, v3, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->b:Lcom/fineclouds/spaceghostq1/dual/c/b;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/dual/c/b;->a(Lcom/fineclouds/spaceghostq1/dual/c/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Landroid/content/Context;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "DualSpacePresenterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 74
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/b$1;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    return-void
.end method

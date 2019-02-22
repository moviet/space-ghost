.class Lcom/fineclouds/spaceghostq1/choose/b/a$1;
.super La/j;
.source "DualChoosePresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/choose/b/a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
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

.field final synthetic b:Lcom/fineclouds/spaceghostq1/choose/b/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/choose/b/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->b:Lcom/fineclouds/spaceghostq1/choose/b/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, La/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 3

    .prologue
    .line 66
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 67
    const-string v0, "io.virtualapp.extra.APP_MODEL"

    iget-object v2, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->b:Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->a(Lcom/fineclouds/spaceghostq1/choose/b/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->b:Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->a(Lcom/fineclouds/spaceghostq1/choose/b/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 61
    const-string v0, "DualChoosePresenterImpl"

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

    .line 62
    return-void
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/choose/b/a$1;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V

    return-void
.end method

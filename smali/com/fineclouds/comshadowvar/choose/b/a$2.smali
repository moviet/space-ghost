.class Lcom/fineclouds/spaceghostq1/choose/b/a$2;
.super La/j;
.source "DualChoosePresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/choose/b/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/j",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/choose/b/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/choose/b/a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$2;->a:Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-direct {p0}, La/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "DualChoosePresenterImpl"

    const-string v1, "onCompleted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "DualChoosePresenterImpl"

    const-string v1, "onNext: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$2;->a:Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/choose/b/a;->b(Lcom/fineclouds/spaceghostq1/choose/b/a;)Ljava/util/List;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/choose/b/a$2;->a:Lcom/fineclouds/spaceghostq1/choose/b/a;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/choose/b/a;->c(Lcom/fineclouds/spaceghostq1/choose/b/a;)Lcom/fineclouds/spaceghostq1/c$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fineclouds/spaceghostq1/c$b;->a(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 90
    const-string v0, "DualChoosePresenterImpl"

    const-string v1, "onError: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public synthetic a_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/choose/b/a$2;->a(Ljava/lang/String;)V

    return-void
.end method

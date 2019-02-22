.class public Lcom/fineclouds/spaceghostq1/dual/b/b;
.super Lcom/a/a/c/b/a/a;
.source "DualDeleteResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/a/a",
        "<",
        "Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/a/a/c/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/a;
    .locals 4

    .prologue
    .line 18
    invoke-static {}, Lcom/a/a/c/c/a;->d()Lcom/a/a/c/c/a$a;

    move-result-object v0

    const-string v1, "dualapp"

    .line 19
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    const-string v1, "_id = ? "

    .line 20
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$b;->a(Ljava/lang/String;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1}, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/a/a/c/c/a$b;->a([Ljava/lang/Object;)Lcom/a/a/c/c/a$b;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/a/a/c/c/a$b;->a()Lcom/a/a/c/c/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/a/a/c/c/a;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/b/b;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/c/a;

    move-result-object v0

    return-object v0
.end method

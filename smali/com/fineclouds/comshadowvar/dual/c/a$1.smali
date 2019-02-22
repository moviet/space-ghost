.class Lcom/fineclouds/spaceghostq1/dual/c/a$1;
.super Lcom/a/a/c/b/c/a;
.source "DualAppModeslImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/dual/c/a;->b(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)Lcom/a/a/c/b/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/c/b/c/a",
        "<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/dual/c/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/dual/c/a;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->b:Lcom/fineclouds/spaceghostq1/dual/c/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-direct {p0}, Lcom/a/a/c/b/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->c(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/ContentValues;)Lcom/a/a/c/c/b;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Landroid/content/ContentValues;)Lcom/a/a/c/c/e;
    .locals 4

    .prologue
    .line 118
    invoke-static {}, Lcom/a/a/c/c/e;->d()Lcom/a/a/c/c/e$a;

    move-result-object v0

    const-string v1, "dualapp"

    .line 119
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$a;->a(Ljava/lang/String;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    const-string v1, "package =? "

    .line 120
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$b;->a(Ljava/lang/String;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    iget-object v3, v3, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 121
    invoke-virtual {v0, v1}, Lcom/a/a/c/c/e$b;->a([Ljava/lang/Object;)Lcom/a/a/c/c/e$b;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/a/a/c/c/e$b;->a()Lcom/a/a/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)Lcom/a/a/c/c/e;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->b(Landroid/content/ContentValues;)Lcom/a/a/c/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .prologue
    .line 128
    return-object p1
.end method

.method protected synthetic c(Ljava/lang/Object;)Lcom/a/a/c/c/b;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/fineclouds/spaceghostq1/dual/c/a$1;->a(Landroid/content/ContentValues;)Lcom/a/a/c/c/b;

    move-result-object v0

    return-object v0
.end method

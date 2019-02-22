.class public final Lcom/a/a/c/b/a/c;
.super Ljava/lang/Object;
.source "DeleteResult.java"


# instance fields
.field private final a:I

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "Please specify affected tables"

    invoke-static {p2, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput p1, p0, Lcom/a/a/c/b/a/c;->a:I

    .line 25
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/a/a/c/b/a/c;
    .locals 2

    .prologue
    .line 50
    const-string v0, "Please specify affected table"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/a/a/c/b/a/c;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/c/b/a/c;-><init>(ILjava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/a/a/c/b/a/c;->a:I

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 78
    check-cast p1, Lcom/a/a/c/b/a/c;

    .line 80
    iget v1, p0, Lcom/a/a/c/b/a/c;->a:I

    iget v2, p1, Lcom/a/a/c/b/a/c;->a:I

    if-ne v1, v2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    iget-object v1, p1, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/a/a/c/b/a/c;->a:I

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteResult{numberOfRowsDeleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/a/a/c/b/a/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affectedTables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/b/a/c;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

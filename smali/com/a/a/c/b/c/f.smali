.class public final Lcom/a/a/c/b/c/f;
.super Ljava/lang/Object;
.source "PutResult.java"


# instance fields
.field private final a:Ljava/lang/Long;

.field private final b:Ljava/lang/Integer;

.field private final c:Ljava/util/Set;
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
.method private constructor <init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of rows updated must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    const-string v0, "affectedTables must not be null"

    invoke-static {p3, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "affectedTables must contain at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "affectedTable must not be null or empty, affectedTables = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_2
    iput-object p1, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    .line 45
    iput-object p2, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    .line 46
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/a/a/c/b/c/f;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/a/a/c/b/c/f;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b/c/f;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/Set;)V

    return-object v0
.end method

.method public static a(JLjava/lang/String;)Lcom/a/a/c/b/c/f;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Lcom/a/a/c/b/c/f;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b/c/f;-><init>(Ljava/lang/Long;Ljava/lang/Integer;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/Set;
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
    .line 170
    iget-object v0, p0, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 178
    check-cast p1, Lcom/a/a/c/b/c/f;

    .line 180
    iget-object v1, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    iget-object v2, p1, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    iget-object v1, p1, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_4
    iget-object v1, p1, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 182
    :cond_5
    iget-object v1, p1, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    .line 190
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    return v0

    :cond_1
    move v0, v1

    .line 189
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PutResult{insertedId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numberOfRowsUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affectedTables="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/b/c/f;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

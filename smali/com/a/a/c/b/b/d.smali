.class public Lcom/a/a/c/b/b/d;
.super Lcom/a/a/c/b/b/c;
.source "PreparedGetListOfObjects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/b/b/d$b;,
        Lcom/a/a/c/b/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/c/b/b/c",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/a/a/c/b/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/b/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/c;Lcom/a/a/c/b/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/c/c/c;",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p3}, Lcom/a/a/c/b/b/c;-><init>(Lcom/a/a/c/c;Lcom/a/a/c/c/c;)V

    .line 50
    iput-object p2, p0, Lcom/a/a/c/b/b/d;->d:Ljava/lang/Class;

    .line 51
    iput-object p4, p0, Lcom/a/a/c/b/b/d;->e:Lcom/a/a/c/b/b/b;

    .line 52
    return-void
.end method

.method constructor <init>(Lcom/a/a/c/c;Ljava/lang/Class;Lcom/a/a/c/c/d;Lcom/a/a/c/b/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/c/c;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/c/c/d;",
            "Lcom/a/a/c/b/b/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p3}, Lcom/a/a/c/b/b/c;-><init>(Lcom/a/a/c/c;Lcom/a/a/c/c/d;)V

    .line 59
    iput-object p2, p0, Lcom/a/a/c/b/b/d;->d:Ljava/lang/Class;

    .line 60
    iput-object p4, p0, Lcom/a/a/c/b/b/d;->e:Lcom/a/a/c/b/b/b;

    .line 61
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->e:Lcom/a/a/c/b/b/b;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->e:Lcom/a/a/c/b/b/b;

    move-object v2, v0

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->b:Lcom/a/a/c/c/c;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->a:Lcom/a/a/c/c;

    iget-object v1, p0, Lcom/a/a/c/b/b/d;->b:Lcom/a/a/c/c/c;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/c/b/b/b;->a(Lcom/a/a/c/c;Lcom/a/a/c/c/c;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 108
    if-nez v0, :cond_4

    .line 109
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->a:Lcom/a/a/c/c;

    invoke-virtual {v0}, Lcom/a/a/c/c;->d()Lcom/a/a/c/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/c/b/b/d;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/a/a/c/c$a;->a(Ljava/lang/Class;)Lcom/a/a/c/b;

    move-result-object v0

    .line 86
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This type does not have type mapping: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/c/b/b/d;->d:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "db was not touched by this operation, please add type mapping for this type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 123
    new-instance v2, Lcom/a/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error has occurred during Get operation. query = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/a/a/c/b/b/d;->b:Lcom/a/a/c/c/c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/a/a/c/b/b/d;->b:Lcom/a/a/c/c/c;

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/a/a/c/b;->b()Lcom/a/a/c/b/b/b;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->c:Lcom/a/a/c/c/d;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->a:Lcom/a/a/c/c;

    iget-object v1, p0, Lcom/a/a/c/b/b/d;->c:Lcom/a/a/c/c/d;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/c/b/b/b;->a(Lcom/a/a/c/c;Lcom/a/a/c/c/d;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please specify query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    :cond_4
    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v2, v1}, Lcom/a/a/c/b/b/b;->b(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 120
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 118
    :cond_5
    :try_start_6
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 120
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 123
    :cond_6
    iget-object v0, p0, Lcom/a/a/c/b/b/d;->c:Lcom/a/a/c/c/d;

    goto :goto_3
.end method

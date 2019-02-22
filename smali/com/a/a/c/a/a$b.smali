.class public final Lcom/a/a/c/a/a$b;
.super Ljava/lang/Object;
.source "DefaultStorIOSQLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/c/b",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/a/a/c/a/a$b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 153
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/a/a/c/b;)Lcom/a/a/c/a/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/a/a/c/b",
            "<TT;>;)",
            "Lcom/a/a/c/a/a$b;"
        }
    .end annotation

    .prologue
    .line 165
    const-string v0, "Please specify type"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    const-string v0, "Please specify type mapping"

    invoke-static {p2, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/a/a/c/a/a$b;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/a/c/a/a$b;->b:Ljava/util/Map;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/a/a/c/a/a$b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object p0
.end method

.method public a()Lcom/a/a/c/a/a;
    .locals 3

    .prologue
    .line 184
    new-instance v0, Lcom/a/a/c/a/a;

    iget-object v1, p0, Lcom/a/a/c/a/a$b;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v2, p0, Lcom/a/a/c/a/a$b;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/a/a/c/a/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/util/Map;)V

    return-object v0
.end method

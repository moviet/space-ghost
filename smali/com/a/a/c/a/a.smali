.class public Lcom/a/a/c/a/a;
.super Lcom/a/a/c/c;
.source "DefaultStorIOSQLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/c/a/a$c;,
        Lcom/a/a/c/a/a$b;,
        Lcom/a/a/c/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final b:Lcom/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/a",
            "<",
            "Lcom/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/c/c$a;


# direct methods
.method protected constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/a/a/c/b",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/a/a/c/c;-><init>()V

    .line 46
    new-instance v0, Lcom/a/a/b/a;

    sget-boolean v1, Lcom/a/a/b/c;->a:Z

    invoke-direct {v0, v1}, Lcom/a/a/b/a;-><init>(Z)V

    iput-object v0, p0, Lcom/a/a/c/a/a;->b:Lcom/a/a/b/a;

    .line 56
    iput-object p1, p0, Lcom/a/a/c/a/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 57
    new-instance v0, Lcom/a/a/c/a/a$c;

    invoke-direct {v0, p0, p2}, Lcom/a/a/c/a/a$c;-><init>(Lcom/a/a/c/a/a;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/c/a/a;->c:Lcom/a/a/c/c$a;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/a/a/c/a/a;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/c/a/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/c/a/a;)Lcom/a/a/b/a;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/a/a/c/a/a;->b:Lcom/a/a/b/a;

    return-object v0
.end method

.method public static e()Lcom/a/a/c/a/a$a;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/a/a/c/a/a$a;

    invoke-direct {v0}, Lcom/a/a/c/a/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/a/a/c/a/a;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 104
    return-void
.end method

.method public d()Lcom/a/a/c/c$a;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/a/a/c/a/a;->c:Lcom/a/a/c/c$a;

    return-object v0
.end method

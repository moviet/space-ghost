.class public final Lcom/a/a/c/a/a$a;
.super Ljava/lang/Object;
.source "DefaultStorIOSQLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteOpenHelper;)Lcom/a/a/c/a/a$b;
    .locals 1

    .prologue
    .line 136
    const-string v0, "Please specify SQLiteOpenHelper instance"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/a/a/c/a/a$b;

    invoke-direct {v0, p1}, Lcom/a/a/c/a/a$b;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    return-object v0
.end method

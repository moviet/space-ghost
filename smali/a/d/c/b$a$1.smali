.class La/d/c/b$a$1;
.super Ljava/lang/Object;
.source "EventLoopsScheduler.java"

# interfaces
.implements La/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/d/c/b$a;->a(La/c/a;)La/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/c/a;

.field final synthetic b:La/d/c/b$a;


# direct methods
.method constructor <init>(La/d/c/b$a;La/c/a;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, La/d/c/b$a$1;->b:La/d/c/b$a;

    iput-object p2, p0, La/d/c/b$a$1;->a:La/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, La/d/c/b$a$1;->b:La/d/c/b$a;

    invoke-virtual {v0}, La/d/c/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, La/d/c/b$a$1;->a:La/c/a;

    invoke-interface {v0}, La/c/a;->c()V

    goto :goto_0
.end method

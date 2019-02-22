.class public Lfineclouds/com/mylibrary/a/a/a;
.super Ljava/lang/Object;
.source "CollectOperateExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfineclouds/com/mylibrary/a/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lfineclouds/com/mylibrary/a/a/b;

.field private b:Landroid/content/Context;

.field private c:Lfineclouds/com/mylibrary/a/b/b;

.field private d:Lfineclouds/com/mylibrary/a/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/a/b;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/a/a;->b:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lfineclouds/com/mylibrary/a/a/a;->a:Lfineclouds/com/mylibrary/a/a/b;

    .line 36
    new-instance v0, Lfineclouds/com/mylibrary/a/b/c;

    invoke-direct {v0, p1}, Lfineclouds/com/mylibrary/a/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/a/a;->c:Lfineclouds/com/mylibrary/a/b/b;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/b;Lfineclouds/com/mylibrary/a/b/c;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/a/a;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lfineclouds/com/mylibrary/a/a/a;->d:Lfineclouds/com/mylibrary/a/c/b;

    .line 46
    iput-object p3, p0, Lfineclouds/com/mylibrary/a/a/a;->c:Lfineclouds/com/mylibrary/a/b/b;

    .line 47
    return-void
.end method

.method static synthetic a(Lfineclouds/com/mylibrary/a/a/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/b/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a;->c:Lfineclouds/com/mylibrary/a/b/b;

    return-object v0
.end method

.method static synthetic c(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/a/b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a;->a:Lfineclouds/com/mylibrary/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lfineclouds/com/mylibrary/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/a/a$a;-><init>(Lfineclouds/com/mylibrary/a/a/a;I)V

    .line 52
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/a/a$a;->start()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lfineclouds/com/mylibrary/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/a/a$a;-><init>(Lfineclouds/com/mylibrary/a/a/a;I)V

    .line 57
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/a/a$a;->start()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lfineclouds/com/mylibrary/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/a/a$a;

    const/4 v1, 0x4

    iget-object v2, p0, Lfineclouds/com/mylibrary/a/a/a;->d:Lfineclouds/com/mylibrary/a/c/b;

    invoke-direct {v0, p0, v1, v2}, Lfineclouds/com/mylibrary/a/a/a$a;-><init>(Lfineclouds/com/mylibrary/a/a/a;ILfineclouds/com/mylibrary/a/c/b;)V

    .line 67
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/a/a$a;->start()V

    goto :goto_0
.end method

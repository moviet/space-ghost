.class public Lcom/fineclouds/spaceghostq1/update/b;
.super Ljava/lang/Object;
.source "UpdatePresenterImpl.java"

# interfaces
.implements Lcom/fineclouds/spaceghostq1/update/a$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/fineclouds/spaceghostq1/update/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/update/a;

    move-result-object v0

    iput-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->b:Lcom/fineclouds/spaceghostq1/update/a;

    .line 26
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->b:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-virtual {v0, p0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a$a;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public a(Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->b:Lcom/fineclouds/spaceghostq1/update/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->b:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V

    .line 44
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/update/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;)Lcom/fineclouds/spaceghostq1/update/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fineclouds/spaceghostq1/update/a;->b(Landroid/content/Context;)Z

    goto :goto_0
.end method

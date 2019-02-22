.class Lcom/fineclouds/spaceghostq1/update/a$4;
.super Ljava/lang/Object;
.source "CheckVersionUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/update/a;->a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfineclouds/com/mylibrary/a/c/f;

.field final synthetic b:Lcom/fineclouds/spaceghostq1/update/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->b:Lcom/fineclouds/spaceghostq1/update/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->a:Lfineclouds/com/mylibrary/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->b:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->b(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->b:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->a:Lfineclouds/com/mylibrary/a/c/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lfineclouds/com/mylibrary/a/c/f;I)V

    .line 318
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->b:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$4;->a:Lfineclouds/com/mylibrary/a/c/f;

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/update/a;->b(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)Lfineclouds/com/mylibrary/a/c/f;

    .line 320
    :cond_0
    return-void
.end method

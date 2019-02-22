.class Lcom/fineclouds/spaceghostq1/update/a$5;
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
    .line 322
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->b:Lcom/fineclouds/spaceghostq1/update/a;

    iput-object p2, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->a:Lfineclouds/com/mylibrary/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->b:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->b(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->a:Lfineclouds/com/mylibrary/a/c/f;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->b:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->b(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->a:Lfineclouds/com/mylibrary/a/c/f;

    invoke-static {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->a(Landroid/content/Context;Lfineclouds/com/mylibrary/a/c/f;)V

    .line 327
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$5;->b:Lcom/fineclouds/spaceghostq1/update/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;I)I

    .line 328
    const-string v0, "CheckVersionUpdate"

    const-string v1, "saveUpgradeAPKInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    return-void
.end method

.class Lcom/fineclouds/spaceghostq1/update/a$2;
.super Ljava/lang/Object;
.source "CheckVersionUpdate.java"

# interfaces
.implements Lfineclouds/com/mylibrary/a/e/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/update/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/update/a;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/update/a;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a$2;->a:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 4

    .prologue
    const/16 v1, 0x3e9

    .line 96
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/update/a$2;->a:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-static {v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 97
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 98
    iput v1, v0, Landroid/os/Message;->what:I

    .line 99
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$2;->a:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    return-void
.end method

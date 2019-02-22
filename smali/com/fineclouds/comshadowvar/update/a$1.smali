.class Lcom/fineclouds/spaceghostq1/update/a$1;
.super Landroid/os/Handler;
.source "CheckVersionUpdate.java"


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
    .line 70
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/update/a$1;->a:Lcom/fineclouds/spaceghostq1/update/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 73
    const-string v0, "CheckVersionUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$1;->a:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfineclouds/com/mylibrary/a/c/f;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;Z)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$1;->a:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfineclouds/com/mylibrary/a/c/f;

    invoke-static {v1, v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$1;->a:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;Landroid/net/Uri;)V

    goto :goto_0

    .line 85
    :pswitch_3
    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/update/a$1;->a:Lcom/fineclouds/spaceghostq1/update/a;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lfineclouds/com/mylibrary/a/c/f;

    invoke-static {v1, v0}, Lcom/fineclouds/spaceghostq1/update/a;->a(Lcom/fineclouds/spaceghostq1/update/a;Lfineclouds/com/mylibrary/a/c/f;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

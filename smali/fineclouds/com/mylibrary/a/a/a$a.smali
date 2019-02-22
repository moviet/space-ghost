.class Lfineclouds/com/mylibrary/a/a/a$a;
.super Ljava/lang/Thread;
.source "CollectOperateExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfineclouds/com/mylibrary/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lfineclouds/com/mylibrary/a/a/a;

.field private b:I

.field private c:Lfineclouds/com/mylibrary/a/c/d;

.field private d:Lfineclouds/com/mylibrary/a/c/c;

.field private e:Lfineclouds/com/mylibrary/a/c/b;

.field private f:Lfineclouds/com/mylibrary/a/c/e;

.field private g:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lfineclouds/com/mylibrary/a/a/a;I)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 79
    iput p2, p0, Lfineclouds/com/mylibrary/a/a/a$a;->b:I

    .line 80
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->g:Lcom/google/gson/Gson;

    .line 81
    return-void
.end method

.method public constructor <init>(Lfineclouds/com/mylibrary/a/a/a;ILfineclouds/com/mylibrary/a/c/b;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 88
    iput p2, p0, Lfineclouds/com/mylibrary/a/a/a$a;->b:I

    .line 89
    iput-object p3, p0, Lfineclouds/com/mylibrary/a/a/a$a;->e:Lfineclouds/com/mylibrary/a/c/b;

    .line 90
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->g:Lcom/google/gson/Gson;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 94
    iget v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->b:I

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/a/a;->a(Lfineclouds/com/mylibrary/a/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/d/c;->a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/d;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->c:Lfineclouds/com/mylibrary/a/c/d;

    .line 97
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/a/a;->a(Lfineclouds/com/mylibrary/a/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/d/a;->a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/c;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->d:Lfineclouds/com/mylibrary/a/c/c;

    .line 98
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->d:Lfineclouds/com/mylibrary/a/c/c;

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->c:Lfineclouds/com/mylibrary/a/c/d;

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/c;->a(Lfineclouds/com/mylibrary/a/c/d;)V

    .line 99
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->g:Lcom/google/gson/Gson;

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->d:Lfineclouds/com/mylibrary/a/c/c;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/a/a;->c(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/a/b;

    move-result-object v1

    iget-object v2, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v2}, Lfineclouds/com/mylibrary/a/a/a;->b(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lfineclouds/com/mylibrary/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lfineclouds/com/mylibrary/a/a/b;->a(J)V

    .line 101
    const-string v0, "micromax"

    const-string v1, "CollectionOperatorTask : run : saveDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v0, "micromax"

    const-string v1, "CollectionOperatorTask : run : saveAppInfo "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->g:Lcom/google/gson/Gson;

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->f:Lfineclouds/com/mylibrary/a/c/e;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/a/a;->b(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lfineclouds/com/mylibrary/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 115
    const-string v2, "micromax"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CollectionOperatorTask : run : saveBasicAcion result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/a/a$a;->g:Lcom/google/gson/Gson;

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->e:Lfineclouds/com/mylibrary/a/c/b;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/a/a$a;->a:Lfineclouds/com/mylibrary/a/a/a;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/a/a;->b(Lfineclouds/com/mylibrary/a/a/a;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lfineclouds/com/mylibrary/a/b/b;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 120
    const-string v2, "micromax"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CollectionOperatorTask : run : saveUserAction result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

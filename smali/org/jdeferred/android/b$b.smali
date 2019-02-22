.class Lorg/jdeferred/android/b$b;
.super Landroid/os/Handler;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/android/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/jdeferred/android/b$a;

    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, v0, Lorg/jdeferred/android/b$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/e;

    iget-object v0, v0, Lorg/jdeferred/android/b$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lorg/jdeferred/e;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, v0, Lorg/jdeferred/android/b$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/g;

    iget-object v0, v0, Lorg/jdeferred/android/b$a;->e:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lorg/jdeferred/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, v0, Lorg/jdeferred/android/b$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/f;

    iget-object v0, v0, Lorg/jdeferred/android/b$a;->d:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lorg/jdeferred/f;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v1, v0, Lorg/jdeferred/android/b$a;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/a;

    iget-object v2, v0, Lorg/jdeferred/android/b$a;->f:Lorg/jdeferred/h$a;

    iget-object v3, v0, Lorg/jdeferred/android/b$a;->c:Ljava/lang/Object;

    iget-object v0, v0, Lorg/jdeferred/android/b$a;->d:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lorg/jdeferred/a;->a(Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

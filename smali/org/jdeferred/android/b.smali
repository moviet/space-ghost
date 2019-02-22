.class public Lorg/jdeferred/android/b;
.super Lorg/jdeferred/a/d;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/android/b$a;,
        Lorg/jdeferred/android/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/a/d",
        "<TD;TF;TP;>;"
    }
.end annotation


# static fields
.field private static final j:Lorg/jdeferred/android/b$b;


# instance fields
.field protected final a:Lorg/slf4j/Logger;

.field private final k:Lorg/jdeferred/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/jdeferred/android/b$b;

    invoke-direct {v0}, Lorg/jdeferred/android/b$b;-><init>()V

    sput-object v0, Lorg/jdeferred/android/b;->j:Lorg/jdeferred/android/b$b;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    invoke-direct {p0, p1, v0}, Lorg/jdeferred/android/b;-><init>(Lorg/jdeferred/h;Lorg/jdeferred/android/c;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/h;Lorg/jdeferred/android/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/h",
            "<TD;TF;TP;>;",
            "Lorg/jdeferred/android/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/jdeferred/a/d;-><init>()V

    .line 40
    const-class v0, Lorg/jdeferred/android/b;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/android/b;->a:Lorg/slf4j/Logger;

    .line 51
    iput-object p2, p0, Lorg/jdeferred/android/b;->k:Lorg/jdeferred/android/c;

    .line 52
    new-instance v0, Lorg/jdeferred/android/b$3;

    invoke-direct {v0, p0}, Lorg/jdeferred/android/b$3;-><init>(Lorg/jdeferred/android/b;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/h;->a(Lorg/jdeferred/e;)Lorg/jdeferred/h;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/android/b$2;

    invoke-direct {v1, p0}, Lorg/jdeferred/android/b$2;-><init>(Lorg/jdeferred/android/b;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/h;->a(Lorg/jdeferred/g;)Lorg/jdeferred/h;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/android/b$1;

    invoke-direct {v1, p0}, Lorg/jdeferred/android/b$1;-><init>(Lorg/jdeferred/android/b;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/h;->a(Lorg/jdeferred/f;)Lorg/jdeferred/h;

    .line 69
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Callback:",
            "Ljava/lang/Object;",
            ">(ITCallback;",
            "Lorg/jdeferred/h$a;",
            "TD;TF;TP;)V"
        }
    .end annotation

    .prologue
    .line 138
    sget-object v7, Lorg/jdeferred/android/b;->j:Lorg/jdeferred/android/b$b;

    new-instance v0, Lorg/jdeferred/android/b$a;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/jdeferred/android/b$a;-><init>(Lorg/jdeferred/b;Ljava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, p1, v0}, Lorg/jdeferred/android/b$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method protected a(Lorg/jdeferred/a;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/a",
            "<TD;TF;>;",
            "Lorg/jdeferred/h$a;",
            "TD;TF;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/b;->c(Ljava/lang/Object;)Lorg/jdeferred/android/c;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/jdeferred/android/b;->a(ILjava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/a;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/jdeferred/e;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/e",
            "<TD;>;TD;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/b;->c(Ljava/lang/Object;)Lorg/jdeferred/android/c;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v1, 0x1

    sget-object v3, Lorg/jdeferred/h$a;->c:Lorg/jdeferred/h$a;

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/jdeferred/android/b;->a(ILjava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/e;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/jdeferred/f;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/f",
            "<TF;>;TF;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/b;->c(Ljava/lang/Object;)Lorg/jdeferred/android/c;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v1, 0x3

    sget-object v3, Lorg/jdeferred/h$a;->b:Lorg/jdeferred/h$a;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lorg/jdeferred/android/b;->a(ILjava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/f;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected a(Lorg/jdeferred/g;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/g",
            "<TP;>;TP;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/b;->c(Ljava/lang/Object;)Lorg/jdeferred/android/c;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v1, 0x2

    sget-object v3, Lorg/jdeferred/h$a;->a:Lorg/jdeferred/h$a;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/jdeferred/android/b;->a(ILjava/lang/Object;Lorg/jdeferred/h$a;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/a/d;->a(Lorg/jdeferred/g;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/Object;)Lorg/jdeferred/android/c;
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    instance-of v1, p1, Lorg/jdeferred/android/d;

    if-eqz v1, :cond_0

    .line 147
    check-cast p1, Lorg/jdeferred/android/d;

    invoke-interface {p1}, Lorg/jdeferred/android/d;->a()Lorg/jdeferred/android/c;

    move-result-object v0

    .line 149
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jdeferred/android/b;->k:Lorg/jdeferred/android/c;

    :cond_1
    return-object v0
.end method

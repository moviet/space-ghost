.class public Lmirror/RefStaticInt;
.super Ljava/lang/Object;
.source "RefStaticInt.java"


# instance fields
.field private field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lmirror/RefStaticInt;->field:Ljava/lang/reflect/Field;

    .line 10
    iget-object v0, p0, Lmirror/RefStaticInt;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    return-void
.end method


# virtual methods
.method public get()I
    .locals 2

    .prologue
    .line 15
    :try_start_0
    iget-object v0, p0, Lmirror/RefStaticInt;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 17
    :goto_0
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(I)V
    .locals 2

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lmirror/RefStaticInt;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method

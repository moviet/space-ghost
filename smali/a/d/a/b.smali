.class public final La/d/a/b;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/a/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, La/d/a/b$1;

    invoke-direct {v0}, La/d/a/b$1;-><init>()V

    sput-object v0, La/d/a/b;->a:Ljava/lang/Object;

    .line 51
    new-instance v0, La/d/a/b$2;

    invoke-direct {v0}, La/d/a/b$2;-><init>()V

    sput-object v0, La/d/a/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    sget-object v0, La/d/a/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    sget-object p0, La/d/a/b;->b:Ljava/lang/Object;

    .line 87
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    new-instance v0, La/d/a/b$a;

    invoke-direct {v0, p0}, La/d/a/b$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(La/e;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/e",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    sget-object v2, La/d/a/b;->a:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    .line 131
    invoke-interface {p0}, La/e;->a()V

    .line 142
    :goto_0
    return v0

    .line 133
    :cond_0
    sget-object v2, La/d/a/b;->b:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    .line 134
    const/4 v0, 0x0

    invoke-interface {p0, v0}, La/e;->a_(Ljava/lang/Object;)V

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    if-eqz p1, :cond_3

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, La/d/a/b$a;

    if-ne v2, v3, :cond_2

    .line 138
    check-cast p1, La/d/a/b$a;

    iget-object v1, p1, La/d/a/b$a;->a:Ljava/lang/Throwable;

    invoke-interface {p0, v1}, La/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-interface {p0, p1}, La/e;->a_(Ljava/lang/Object;)V

    move v0, v1

    .line 142
    goto :goto_0

    .line 144
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, La/d/a/b;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.class public final La/d/d/h;
.super La/d;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/d/h$d;,
        La/d/d/h$c;,
        La/d/d/h$b;,
        La/d/d/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "La/d",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, La/d/d/h;->c:Z

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, La/d/d/h$a;

    invoke-direct {v0, p1}, La/d/d/h$a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, La/f/c;->a(La/d$a;)La/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, La/d;-><init>(La/d$a;)V

    .line 77
    iput-object p1, p0, La/d/d/h;->b:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public static a(Ljava/lang/Object;)La/d/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "La/d/d/h",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, La/d/d/h;

    invoke-direct {v0, p0}, La/d/d/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(La/j;Ljava/lang/Object;)La/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La/j",
            "<-TT;>;TT;)",
            "La/f;"
        }
    .end annotation

    .prologue
    .line 59
    sget-boolean v0, La/d/d/h;->c:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, La/d/b/b;

    invoke-direct {v0, p0, p1}, La/d/b/b;-><init>(La/j;Ljava/lang/Object;)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, La/d/d/h$d;

    invoke-direct {v0, p0, p1}, La/d/d/h$d;-><init>(La/j;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public c(La/g;)La/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/g;",
            ")",
            "La/d",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    instance-of v0, p1, La/d/c/b;

    if-eqz v0, :cond_0

    .line 98
    check-cast p1, La/d/c/b;

    .line 99
    new-instance v0, La/d/d/h$1;

    invoke-direct {v0, p0, p1}, La/d/d/h$1;-><init>(La/d/d/h;La/d/c/b;)V

    .line 125
    :goto_0
    new-instance v1, La/d/d/h$b;

    iget-object v2, p0, La/d/d/h;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, La/d/d/h$b;-><init>(Ljava/lang/Object;La/c/e;)V

    invoke-static {v1}, La/d/d/h;->a(La/d$a;)La/d;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, La/d/d/h$2;

    invoke-direct {v0, p0, p1}, La/d/d/h$2;-><init>(La/d/d/h;La/g;)V

    goto :goto_0
.end method

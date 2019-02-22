.class public La/a;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a$b;,
        La/a$a;
    }
.end annotation


# static fields
.field static final a:La/a;

.field static final b:La/a;


# instance fields
.field private final c:La/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, La/a;

    new-instance v1, La/a$1;

    invoke-direct {v1}, La/a$1;-><init>()V

    invoke-direct {v0, v1, v2}, La/a;-><init>(La/a$a;Z)V

    sput-object v0, La/a;->a:La/a;

    .line 78
    new-instance v0, La/a;

    new-instance v1, La/a$2;

    invoke-direct {v1}, La/a$2;-><init>()V

    invoke-direct {v0, v1, v2}, La/a;-><init>(La/a$a;Z)V

    sput-object v0, La/a;->b:La/a;

    return-void
.end method

.method protected constructor <init>(La/a$a;Z)V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    if-eqz p2, :cond_0

    invoke-static {p1}, La/f/c;->a(La/a$a;)La/a$a;

    move-result-object p1

    :cond_0
    iput-object p1, p0, La/a;->c:La/a$a;

    .line 1014
    return-void
.end method

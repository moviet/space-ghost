.class public Lcom/a/a/a/a/a;
.super Lcom/a/a/a/a;
.source "DefaultStorIOContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/a/a$c;,
        Lcom/a/a/a/a/a$b;,
        Lcom/a/a/a/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/a/a$a;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/a/a/a/a;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/a/a/a/a/a;->b:Landroid/content/ContentResolver;

    .line 54
    iput-object p2, p0, Lcom/a/a/a/a/a;->c:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/a/a/a/a/a$c;

    invoke-direct {v0, p0, p3}, Lcom/a/a/a/a/a$c;-><init>(Lcom/a/a/a/a/a;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/a/a/a/a/a;->a:Lcom/a/a/a/a$a;

    .line 56
    return-void
.end method

.method public static a()Lcom/a/a/a/a/a$a;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/a/a/a/a/a$a;

    invoke-direct {v0}, Lcom/a/a/a/a/a$a;-><init>()V

    return-object v0
.end method

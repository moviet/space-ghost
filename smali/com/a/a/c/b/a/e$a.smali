.class public Lcom/a/a/c/b/a/e$a;
.super Ljava/lang/Object;
.source "PreparedDeleteByQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/c/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/a/a/c/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/a/b",
            "<",
            "Lcom/a/a/c/c/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/a/a/c/c;

.field private final c:Lcom/a/a/c/c/a;

.field private d:Lcom/a/a/c/b/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/c/b/a/b",
            "<",
            "Lcom/a/a/c/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/a/a/c/b/a/e$a$1;

    invoke-direct {v0}, Lcom/a/a/c/b/a/e$a$1;-><init>()V

    sput-object v0, Lcom/a/a/c/b/a/e$a;->a:Lcom/a/a/c/b/a/b;

    return-void
.end method

.method constructor <init>(Lcom/a/a/c/c;Lcom/a/a/c/c/a;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/a/a/c/b/a/e$a;->b:Lcom/a/a/c/c;

    .line 151
    iput-object p2, p0, Lcom/a/a/c/b/a/e$a;->c:Lcom/a/a/c/c/a;

    .line 152
    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/c/b/a/e;
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/a/a/c/b/a/e$a;->d:Lcom/a/a/c/b/a/b;

    if-nez v0, :cond_0

    .line 177
    sget-object v0, Lcom/a/a/c/b/a/e$a;->a:Lcom/a/a/c/b/a/b;

    iput-object v0, p0, Lcom/a/a/c/b/a/e$a;->d:Lcom/a/a/c/b/a/b;

    .line 180
    :cond_0
    new-instance v0, Lcom/a/a/c/b/a/e;

    iget-object v1, p0, Lcom/a/a/c/b/a/e$a;->b:Lcom/a/a/c/c;

    iget-object v2, p0, Lcom/a/a/c/b/a/e$a;->c:Lcom/a/a/c/c/a;

    iget-object v3, p0, Lcom/a/a/c/b/a/e$a;->d:Lcom/a/a/c/b/a/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/c/b/a/e;-><init>(Lcom/a/a/c/c;Lcom/a/a/c/c/a;Lcom/a/a/c/b/a/b;)V

    return-object v0
.end method

.class public final Lcom/a/a/a/a/a$a;
.super Ljava/lang/Object;
.source "DefaultStorIOContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentResolver;)Lcom/a/a/a/a/a$b;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Please specify content resolver"

    invoke-static {p1, v0}, Lcom/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/a/a/a/a/a$b;

    invoke-direct {v0, p1}, Lcom/a/a/a/a/a$b;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method

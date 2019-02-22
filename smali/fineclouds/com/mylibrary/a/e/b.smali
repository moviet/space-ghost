.class public Lfineclouds/com/mylibrary/a/e/b;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfineclouds/com/mylibrary/a/e/b$a;,
        Lfineclouds/com/mylibrary/a/e/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lfineclouds/com/mylibrary/a/e/a;

.field private c:Lretrofit2/Retrofit;

.field private d:Lfineclouds/com/mylibrary/a/e/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfineclouds/com/mylibrary/a/e/b$b;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/e/b;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lfineclouds/com/mylibrary/a/e/b;->d:Lfineclouds/com/mylibrary/a/e/b$b;

    .line 33
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "http://almanac.flabcore.com"

    .line 34
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 35
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->c:Lretrofit2/Retrofit;

    .line 37
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->c:Lretrofit2/Retrofit;

    const-class v1, Lfineclouds/com/mylibrary/a/e/a;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfineclouds/com/mylibrary/a/e/a;

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->b:Lfineclouds/com/mylibrary/a/e/a;

    .line 38
    return-void
.end method

.method static synthetic a(Lfineclouds/com/mylibrary/a/e/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lfineclouds/com/mylibrary/a/e/b;)Lfineclouds/com/mylibrary/a/e/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->b:Lfineclouds/com/mylibrary/a/e/a;

    return-object v0
.end method

.method static synthetic c(Lfineclouds/com/mylibrary/a/e/b;)Lfineclouds/com/mylibrary/a/e/b$b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b;->d:Lfineclouds/com/mylibrary/a/e/b$b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lfineclouds/com/mylibrary/a/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/e/b$a;-><init>(Lfineclouds/com/mylibrary/a/e/b;Lfineclouds/com/mylibrary/a/e/b$1;)V

    .line 44
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/e/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method public b()Lfineclouds/com/mylibrary/a/c/f;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lfineclouds/com/mylibrary/a/c/f;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/a/c/f;-><init>()V

    .line 84
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->c(Ljava/lang/String;)V

    .line 85
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->a(Ljava/lang/String;)V

    .line 86
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->d(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->a(I)V

    .line 88
    const-string v1, ""

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/f;->b(Ljava/lang/String;)V

    .line 89
    return-object v0
.end method

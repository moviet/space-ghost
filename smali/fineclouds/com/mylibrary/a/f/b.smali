.class public Lfineclouds/com/mylibrary/a/f/b;
.super Ljava/lang/Object;
.source "UploadOperateExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfineclouds/com/mylibrary/a/f/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Lfineclouds/com/mylibrary/a/f/a;

.field private c:Lretrofit2/Retrofit;

.field private d:Lfineclouds/com/mylibrary/a/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/f/b;->a:Landroid/content/Context;

    .line 44
    new-instance v0, Lfineclouds/com/mylibrary/a/b/c;

    invoke-direct {v0, p1}, Lfineclouds/com/mylibrary/a/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->d:Lfineclouds/com/mylibrary/a/b/b;

    .line 45
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 46
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 48
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v2, "http://almanac.flabcore.com/"

    .line 49
    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 50
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->c:Lretrofit2/Retrofit;

    .line 52
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->c:Lretrofit2/Retrofit;

    const-class v1, Lfineclouds/com/mylibrary/a/f/a;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfineclouds/com/mylibrary/a/f/a;

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->b:Lfineclouds/com/mylibrary/a/f/a;

    .line 53
    return-void
.end method

.method static synthetic a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->d:Lfineclouds/com/mylibrary/a/b/b;

    return-object v0
.end method

.method static synthetic b(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/f/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->b:Lfineclouds/com/mylibrary/a/f/a;

    return-object v0
.end method

.method static synthetic c(Lfineclouds/com/mylibrary/a/f/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/g/b;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lfineclouds/com/mylibrary/a/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/f/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/f/b$a;-><init>(Lfineclouds/com/mylibrary/a/f/b;I)V

    .line 57
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b$a;->start()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lfineclouds/com/mylibrary/a/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/f/b$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/f/b$a;-><init>(Lfineclouds/com/mylibrary/a/f/b;I)V

    .line 67
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b$a;->start()V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Lfineclouds/com/mylibrary/a/f/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lfineclouds/com/mylibrary/a/f/b$a;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lfineclouds/com/mylibrary/a/f/b$a;-><init>(Lfineclouds/com/mylibrary/a/f/b;I)V

    .line 72
    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/f/b$a;->start()V

    goto :goto_0
.end method

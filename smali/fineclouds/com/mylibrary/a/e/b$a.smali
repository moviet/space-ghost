.class Lfineclouds/com/mylibrary/a/e/b$a;
.super Landroid/os/AsyncTask;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfineclouds/com/mylibrary/a/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lfineclouds/com/mylibrary/a/c/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfineclouds/com/mylibrary/a/e/b;


# direct methods
.method private constructor <init>(Lfineclouds/com/mylibrary/a/e/b;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfineclouds/com/mylibrary/a/e/b;Lfineclouds/com/mylibrary/a/e/b$1;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lfineclouds/com/mylibrary/a/e/b$a;-><init>(Lfineclouds/com/mylibrary/a/e/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lfineclouds/com/mylibrary/a/c/f;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/e/b;->a(Lfineclouds/com/mylibrary/a/e/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/d/c;->a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/d;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 52
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/e/b;->b(Lfineclouds/com/mylibrary/a/e/b;)Lfineclouds/com/mylibrary/a/e/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lfineclouds/com/mylibrary/a/e/a;->a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfineclouds/com/mylibrary/a/c/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-virtual {v0}, Lfineclouds/com/mylibrary/a/e/b;->b()Lfineclouds/com/mylibrary/a/c/f;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lfineclouds/com/mylibrary/a/c/f;)V
    .locals 3

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/e/b;->c(Lfineclouds/com/mylibrary/a/e/b;)Lfineclouds/com/mylibrary/a/e/b$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lfineclouds/com/mylibrary/a/e/b$b;->a(Lfineclouds/com/mylibrary/a/c/f;)V

    .line 69
    const-string v0, "micromax"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessServer : Update :  package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " versionCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lfineclouds/com/mylibrary/a/c/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/e/b;->c(Lfineclouds/com/mylibrary/a/e/b;)Lfineclouds/com/mylibrary/a/e/b$b;

    move-result-object v0

    iget-object v1, p0, Lfineclouds/com/mylibrary/a/e/b$a;->a:Lfineclouds/com/mylibrary/a/e/b;

    invoke-virtual {v1}, Lfineclouds/com/mylibrary/a/e/b;->b()Lfineclouds/com/mylibrary/a/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lfineclouds/com/mylibrary/a/e/b$b;->a(Lfineclouds/com/mylibrary/a/c/f;)V

    goto :goto_0
.end method

.method protected varargs b([Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfineclouds/com/mylibrary/a/e/b$a;->a([Ljava/lang/Void;)Lfineclouds/com/mylibrary/a/c/f;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Lfineclouds/com/mylibrary/a/c/f;

    invoke-virtual {p0, p1}, Lfineclouds/com/mylibrary/a/e/b$a;->a(Lfineclouds/com/mylibrary/a/c/f;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfineclouds/com/mylibrary/a/e/b$a;->b([Ljava/lang/Void;)V

    return-void
.end method

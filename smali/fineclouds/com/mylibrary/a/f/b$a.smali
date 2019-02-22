.class Lfineclouds/com/mylibrary/a/f/b$a;
.super Ljava/lang/Thread;
.source "UploadOperateExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfineclouds/com/mylibrary/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lfineclouds/com/mylibrary/a/f/b;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfineclouds/com/mylibrary/a/f/b;I)V
    .locals 1

    .prologue
    .line 81
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    .line 82
    iput p2, p0, Lfineclouds/com/mylibrary/a/f/b$a;->c:I

    .line 83
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lfineclouds/com/mylibrary/a/c/a;

    invoke-direct {v0}, Lfineclouds/com/mylibrary/a/c/a;-><init>()V

    .line 155
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/a;->a(Ljava/util/List;)V

    .line 156
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/f/b;->c(Lfineclouds/com/mylibrary/a/f/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/d/c;->a(Landroid/content/Context;)Lfineclouds/com/mylibrary/a/c/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfineclouds/com/mylibrary/a/c/a;->a(Lfineclouds/com/mylibrary/a/c/d;)V

    .line 157
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 158
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "\\"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v1, "\"{"

    const-string v2, "{"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string v1, "}\""

    const-string v2, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :try_start_0
    const-string v1, "micromaxx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadOperatorTask : reformatDataAndUpload :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/f/b;->b(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/f/a;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lfineclouds/com/mylibrary/a/f/a;->a(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    .line 165
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "success"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "micromax"

    const-string v1, "UploadOperatorTask : upload userInfo success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfineclouds/com/mylibrary/a/b/b;->a(Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->c(Lfineclouds/com/mylibrary/a/f/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_upload_user_action_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "AppLockPrefs"

    invoke-static {v0, v1, v2, v3}, Lfineclouds/com/mylibrary/a/g/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 86
    iget v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->c:I

    packed-switch v1, :pswitch_data_0

    .line 151
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lfineclouds/com/mylibrary/a/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    .line 89
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    move v1, v0

    .line 90
    :goto_1
    iget v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    if-ge v1, v0, :cond_0

    .line 92
    :try_start_0
    const-string v2, "micromaxx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadOperatorTask : run : devicelist1: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->b(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/f/a;

    move-result-object v2

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lfineclouds/com/mylibrary/a/f/a;->a(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "success"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "micromax"

    const-string v2, "UploadOperatorTask : uploadDeviceINfo success!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v2

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lfineclouds/com/mylibrary/a/b/b;->b(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 105
    :pswitch_2
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v1}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lfineclouds/com/mylibrary/a/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    .line 106
    iget-object v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    move v1, v0

    .line 107
    :goto_3
    iget v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    if-ge v1, v0, :cond_0

    .line 109
    :try_start_1
    const-string v2, "micromaxx"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadOperatorTask : run : applist: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->b(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/f/a;

    move-result-object v2

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lfineclouds/com/mylibrary/a/f/a;->a(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "success"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    const-string v0, "micromax"

    const-string v2, "UploadOperatorTask : uploadAPP_Info success!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v2

    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Lfineclouds/com/mylibrary/a/b/b;->b(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :cond_2
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 116
    :catch_1
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 122
    :pswitch_3
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfineclouds/com/mylibrary/a/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    .line 133
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, v3}, Lfineclouds/com/mylibrary/a/f/b$a;->a(I)V

    goto/16 :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->b:Lfineclouds/com/mylibrary/a/f/b;

    invoke-static {v0}, Lfineclouds/com/mylibrary/a/f/b;->a(Lfineclouds/com/mylibrary/a/f/b;)Lfineclouds/com/mylibrary/a/b/b;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lfineclouds/com/mylibrary/a/b/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    .line 138
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->a:I

    .line 147
    iget-object v0, p0, Lfineclouds/com/mylibrary/a/f/b$a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0, v4}, Lfineclouds/com/mylibrary/a/f/b$a;->a(I)V

    goto/16 :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.class public interface abstract Lfineclouds/com/mylibrary/a/f/a;
.super Ljava/lang/Object;
.source "UploadAPI.java"


# virtual methods
.method public abstract a(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "content"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "action_type"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json",
            "User-ID: 0"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "collect"
    .end annotation
.end method

.class public interface abstract Lfineclouds/com/mylibrary/a/e/a;
.super Ljava/lang/Object;
.source "UpdateAPI.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "head_info"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lfineclouds/com/mylibrary/a/c/f;",
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
        value = "upgrade"
    .end annotation
.end method

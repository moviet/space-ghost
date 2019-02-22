.class public Lcom/lody/virtual/helper/compat/ParceledListSliceCompat;
.super Ljava/lang/Object;
.source "ParceledListSliceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 20
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->ctor:Lmirror/RefConstructor;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lmirror/android/content/pm/ParceledListSliceJBMR2;->ctor:Lmirror/RefConstructor;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Lmirror/RefConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    .line 23
    :cond_0
    sget-object v0, Lmirror/android/content/pm/ParceledListSlice;->ctor:Lmirror/RefConstructor;

    invoke-virtual {v0}, Lmirror/RefConstructor;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    sget-object v3, Lmirror/android/content/pm/ParceledListSlice;->append:Lmirror/RefMethod;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v3, v0, v4}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 27
    :cond_1
    sget-object v1, Lmirror/android/content/pm/ParceledListSlice;->setLastSlice:Lmirror/RefMethod;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v0, v2}, Lmirror/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static isReturnParceledListSlice(Ljava/lang/reflect/Method;)Z
    .locals 2

    .prologue
    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lmirror/android/content/pm/ParceledListSlice;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

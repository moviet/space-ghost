.class public Lcom/lody/virtual/helper/utils/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/helper/utils/Reflect$NULL;
    }
.end annotation


# instance fields
.field private final isClass:Z

.field private final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->isClass:Z

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->isClass:Z

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/lody/virtual/helper/utils/Reflect;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    if-nez p0, :cond_1

    .line 98
    const/4 p0, 0x0

    .line 114
    :cond_0
    :goto_0
    return-object p0

    .line 101
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/Member;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 102
    check-cast v0, Ljava/lang/reflect/Member;

    .line 104
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 306
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 310
    :catch_0
    move-exception v2

    move-object v1, v0

    .line 313
    :goto_1
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 317
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 318
    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v0, v2}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object v1, v0

    goto :goto_1
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lody/virtual/helper/utils/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 511
    array-length v0, p1

    array-length v2, p2

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 512
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 513
    aget-object v2, p2, v0

    const-class v3, Lcom/lody/virtual/helper/utils/Reflect$NULL;

    if-ne v2, v3, :cond_1

    .line 512
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/lody/virtual/helper/utils/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/lody/virtual/helper/utils/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    :cond_2
    :goto_1
    return v1

    .line 522
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private matchObject([Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 629
    const-class v1, [Ljava/lang/Object;

    .line 630
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private matchObjectMethod(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lody/virtual/helper/utils/Reflect;->matchObject([Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/lody/virtual/helper/utils/Reflect;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/lody/virtual/helper/utils/Reflect;

    invoke-direct {v0, p0}, Lcom/lody/virtual/helper/utils/Reflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/lody/virtual/helper/utils/Reflect;

    invoke-direct {v0, p0}, Lcom/lody/virtual/helper/utils/Reflect;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/lody/virtual/helper/utils/Reflect;->forName(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Class;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    return-object v0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lody/virtual/helper/utils/Reflect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    invoke-static {p0}, Lcom/lody/virtual/helper/utils/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 151
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    const-string v0, ""

    .line 135
    :goto_0
    return-object v0

    .line 132
    :cond_0
    if-ne v0, v2, :cond_1

    .line 133
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 410
    invoke-direct {p0, v1, p1, p2}, Lcom/lody/virtual/helper/utils/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v1

    .line 418
    :goto_1
    return-object v0

    .line 409
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 417
    invoke-direct {p0, v1, p1, p2}, Lcom/lody/virtual/helper/utils/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 418
    goto :goto_1

    .line 416
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 422
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 423
    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No similar method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " could be found on type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 426
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p0, :cond_0

    .line 180
    new-array v0, v0, [Ljava/lang/Class;

    .line 190
    :goto_0
    return-object v0

    .line 183
    :cond_0
    array-length v1, p0

    new-array v2, v1, [Ljava/lang/Class;

    .line 185
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 186
    aget-object v1, p0, v0

    .line 187
    if-nez v1, :cond_1

    const-class v1, Lcom/lody/virtual/helper/utils/Reflect$NULL;

    :goto_2
    aput-object v1, v2, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v0, v2

    .line 190
    goto :goto_0
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    instance-of v0, p0, Lcom/lody/virtual/helper/utils/Reflect;

    if-eqz v0, :cond_0

    .line 167
    check-cast p0, Lcom/lody/virtual/helper/utils/Reflect;

    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    .line 170
    :cond_0
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 218
    if-nez p0, :cond_1

    .line 219
    const/4 p0, 0x0

    .line 242
    :cond_0
    :goto_0
    return-object p0

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 222
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 223
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 224
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 225
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 226
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 227
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 228
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 229
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 230
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 231
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 232
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 233
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 234
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 235
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_9

    .line 236
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 237
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 238
    const-class p0, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    .line 478
    new-instance v1, Lcom/lody/virtual/helper/utils/Reflect$1;

    invoke-direct {v1, p0, v0}, Lcom/lody/virtual/helper/utils/Reflect$1;-><init>(Lcom/lody/virtual/helper/utils/Reflect;Z)V

    .line 504
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 357
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p2}, Lcom/lody/virtual/helper/utils/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    .line 372
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/lody/virtual/helper/utils/Reflect;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-static {v1, v2, p2}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 374
    :catch_0
    move-exception v1

    .line 376
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/lody/virtual/helper/utils/Reflect;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 378
    :catch_1
    move-exception v0

    .line 379
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public varargs callBest(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 587
    invoke-static {p2}, Lcom/lody/virtual/helper/utils/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v6

    .line 588
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 590
    const/4 v3, 0x0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v4, v5

    move v0, v5

    :goto_0
    if-ge v4, v8, :cond_0

    aget-object v2, v7, v4

    .line 593
    invoke-direct {p0, v2, p1, v6}, Lcom/lody/virtual/helper/utils/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 595
    const/4 v0, 0x2

    move-object v3, v2

    .line 607
    :cond_0
    if-eqz v3, :cond_5

    .line 608
    if-nez v0, :cond_7

    .line 609
    new-array v2, v5, [Ljava/lang/Object;

    .line 611
    :goto_1
    if-ne v0, v1, :cond_6

    .line 612
    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 615
    :goto_2
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    return-object v0

    .line 598
    :cond_1
    invoke-direct {p0, v2, p1, v6}, Lcom/lody/virtual/helper/utils/Reflect;->matchObjectMethod(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v0, v1

    .line 592
    :cond_2
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_0

    .line 603
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_4

    if-eqz v0, :cond_2

    :cond_4
    move-object v2, v3

    goto :goto_3

    .line 617
    :cond_5
    new-instance v0, Lcom/lody/virtual/helper/utils/ReflectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no method found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No best method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with params "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could be found on type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 618
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    move-object v2, p2

    goto/16 :goto_1
.end method

.method public create()Lcom/lody/virtual/helper/utils/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/lody/virtual/helper/utils/Reflect;->create([Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs create([Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-static {p1}, Lcom/lody/virtual/helper/utils/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 457
    invoke-static {v0, p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 461
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 460
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/lody/virtual/helper/utils/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-static {v5, p1}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_1
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 541
    instance-of v0, p1, Lcom/lody/virtual/helper/utils/Reflect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    check-cast p1, Lcom/lody/virtual/helper/utils/Reflect;

    invoke-virtual {p1}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 388
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v1

    .line 392
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 393
    :catch_1
    move-exception v1

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 397
    if-nez v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
.end method

.method public field(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    iget-object v2, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fields()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lody/virtual/helper/utils/Reflect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 330
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 331
    invoke-virtual {p0}, Lcom/lody/virtual/helper/utils/Reflect;->type()Ljava/lang/Class;

    move-result-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 335
    iget-boolean v1, p0, Lcom/lody/virtual/helper/utils/Reflect;->isClass:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    xor-int/2addr v1, v8

    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 339
    invoke-virtual {p0, v1}, Lcom/lody/virtual/helper/utils/Reflect;->field(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 335
    goto :goto_1

    .line 343
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    .line 346
    return-object v4
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-virtual {p0, p1}, Lcom/lody/virtual/helper/utils/Reflect;->field(Ljava/lang/String;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lody/virtual/helper/utils/ReflectException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lody/virtual/helper/utils/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 267
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    iget-object v1, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-static {p2}, Lcom/lody/virtual/helper/utils/Reflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-object p0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    new-instance v1, Lcom/lody/virtual/helper/utils/ReflectException;

    invoke-direct {v1, v0}, Lcom/lody/virtual/helper/utils/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->isClass:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 562
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.class Lcom/lody/virtual/helper/utils/Reflect$1;
.super Ljava/lang/Object;
.source "Reflect.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/helper/utils/Reflect;->as(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/helper/utils/Reflect;

.field final synthetic val$isMap:Z


# direct methods
.method constructor <init>(Lcom/lody/virtual/helper/utils/Reflect;Z)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/lody/virtual/helper/utils/Reflect$1;->this$0:Lcom/lody/virtual/helper/utils/Reflect;

    iput-boolean p2, p0, Lcom/lody/virtual/helper/utils/Reflect$1;->val$isMap:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 481
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect$1;->this$0:Lcom/lody/virtual/helper/utils/Reflect;

    # getter for: Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->access$000(Lcom/lody/virtual/helper/utils/Reflect;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->on(Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Lcom/lody/virtual/helper/utils/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/lody/virtual/helper/utils/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lody/virtual/helper/utils/Reflect;->get()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/lody/virtual/helper/utils/ReflectException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    .line 484
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 485
    iget-boolean v0, p0, Lcom/lody/virtual/helper/utils/Reflect$1;->val$isMap:Z

    if-eqz v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/lody/virtual/helper/utils/Reflect$1;->this$0:Lcom/lody/virtual/helper/utils/Reflect;

    # getter for: Lcom/lody/virtual/helper/utils/Reflect;->object:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lody/virtual/helper/utils/Reflect;->access$000(Lcom/lody/virtual/helper/utils/Reflect;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 487
    if-nez p3, :cond_0

    move v2, v3

    .line 489
    :goto_1
    if-nez v2, :cond_1

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 490
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lody/virtual/helper/utils/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_0
    array-length v2, p3

    goto :goto_1

    .line 491
    :cond_1
    if-nez v2, :cond_2

    const-string v5, "is"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 492
    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lody/virtual/helper/utils/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 493
    :cond_2
    const/4 v5, 0x1

    if-ne v2, v5, :cond_3

    const-string v2, "set"

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 494
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/lody/virtual/helper/utils/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/lody/virtual/helper/utils/Reflect;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    :cond_3
    throw v1
.end method

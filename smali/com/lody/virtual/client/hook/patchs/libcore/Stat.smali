.class public Lcom/lody/virtual/client/hook/patchs/libcore/Stat;
.super Lcom/lody/virtual/client/hook/base/Hook;
.source "Stat.java"


# static fields
.field private static st_uid:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 20
    :try_start_0
    sget-object v0, Lmirror/libcore/io/Os;->TYPE:Ljava/lang/Class;

    const-string v1, "stat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 22
    const-string v1, "st_uid"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;->st_uid:Ljava/lang/reflect/Field;

    .line 23
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;->st_uid:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lody/virtual/client/hook/base/Hook;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCall(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;->st_uid:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    invoke-static {}, Lcom/lody/virtual/client/core/VirtualCore;->get()Lcom/lody/virtual/client/core/VirtualCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lody/virtual/client/core/VirtualCore;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 33
    sget-object v0, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;->st_uid:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lcom/lody/virtual/client/hook/patchs/libcore/Stat;->getBaseVUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    :cond_0
    return-object p4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "stat"

    return-object v0
.end method

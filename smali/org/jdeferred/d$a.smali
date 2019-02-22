.class public final enum Lorg/jdeferred/d$a;
.super Ljava/lang/Enum;
.source "DeferredManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdeferred/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jdeferred/d$a;

.field public static final enum b:Lorg/jdeferred/d$a;

.field public static final enum c:Lorg/jdeferred/d$a;

.field private static final synthetic d:[Lorg/jdeferred/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lorg/jdeferred/d$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lorg/jdeferred/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/d$a;->a:Lorg/jdeferred/d$a;

    .line 74
    new-instance v0, Lorg/jdeferred/d$a;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lorg/jdeferred/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/d$a;->b:Lorg/jdeferred/d$a;

    .line 79
    new-instance v0, Lorg/jdeferred/d$a;

    const-string v1, "MANAUL"

    invoke-direct {v0, v1, v4}, Lorg/jdeferred/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/d$a;->c:Lorg/jdeferred/d$a;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jdeferred/d$a;

    sget-object v1, Lorg/jdeferred/d$a;->a:Lorg/jdeferred/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdeferred/d$a;->b:Lorg/jdeferred/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jdeferred/d$a;->c:Lorg/jdeferred/d$a;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jdeferred/d$a;->d:[Lorg/jdeferred/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdeferred/d$a;
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/jdeferred/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/d$a;

    return-object v0
.end method

.method public static values()[Lorg/jdeferred/d$a;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/jdeferred/d$a;->d:[Lorg/jdeferred/d$a;

    invoke-virtual {v0}, [Lorg/jdeferred/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdeferred/d$a;

    return-object v0
.end method

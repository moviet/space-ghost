.class public final enum Lorg/jdeferred/h$a;
.super Ljava/lang/Enum;
.source "Promise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdeferred/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jdeferred/h$a;

.field public static final enum b:Lorg/jdeferred/h$a;

.field public static final enum c:Lorg/jdeferred/h$a;

.field private static final synthetic d:[Lorg/jdeferred/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lorg/jdeferred/h$a;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lorg/jdeferred/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/h$a;->a:Lorg/jdeferred/h$a;

    .line 67
    new-instance v0, Lorg/jdeferred/h$a;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v3}, Lorg/jdeferred/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/h$a;->b:Lorg/jdeferred/h$a;

    .line 75
    new-instance v0, Lorg/jdeferred/h$a;

    const-string v1, "RESOLVED"

    invoke-direct {v0, v1, v4}, Lorg/jdeferred/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/h$a;->c:Lorg/jdeferred/h$a;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jdeferred/h$a;

    sget-object v1, Lorg/jdeferred/h$a;->a:Lorg/jdeferred/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdeferred/h$a;->b:Lorg/jdeferred/h$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jdeferred/h$a;->c:Lorg/jdeferred/h$a;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jdeferred/h$a;->d:[Lorg/jdeferred/h$a;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdeferred/h$a;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lorg/jdeferred/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/h$a;

    return-object v0
.end method

.method public static values()[Lorg/jdeferred/h$a;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/jdeferred/h$a;->d:[Lorg/jdeferred/h$a;

    invoke-virtual {v0}, [Lorg/jdeferred/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdeferred/h$a;

    return-object v0
.end method

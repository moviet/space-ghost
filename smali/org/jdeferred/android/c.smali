.class public final enum Lorg/jdeferred/android/c;
.super Ljava/lang/Enum;
.source "AndroidExecutionScope.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdeferred/android/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jdeferred/android/c;

.field public static final enum b:Lorg/jdeferred/android/c;

.field private static final synthetic c:[Lorg/jdeferred/android/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lorg/jdeferred/android/c;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lorg/jdeferred/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/android/c;->a:Lorg/jdeferred/android/c;

    .line 20
    new-instance v0, Lorg/jdeferred/android/c;

    const-string v1, "UI"

    invoke-direct {v0, v1, v3}, Lorg/jdeferred/android/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdeferred/android/c;

    sget-object v1, Lorg/jdeferred/android/c;->a:Lorg/jdeferred/android/c;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdeferred/android/c;->b:Lorg/jdeferred/android/c;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jdeferred/android/c;->c:[Lorg/jdeferred/android/c;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdeferred/android/c;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/jdeferred/android/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdeferred/android/c;

    return-object v0
.end method

.method public static values()[Lorg/jdeferred/android/c;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/jdeferred/android/c;->c:[Lorg/jdeferred/android/c;

    invoke-virtual {v0}, [Lorg/jdeferred/android/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdeferred/android/c;

    return-object v0
.end method

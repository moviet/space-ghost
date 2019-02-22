.class final enum La/d/d/j$a;
.super Ljava/lang/Enum;
.source "UtilityFunctions.java"

# interfaces
.implements La/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/d/d/j$a;",
        ">;",
        "La/c/e",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/d/d/j$a;

.field private static final synthetic b:[La/d/d/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, La/d/d/j$a;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, La/d/d/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/d/d/j$a;->a:La/d/d/j$a;

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [La/d/d/j$a;

    sget-object v1, La/d/d/j$a;->a:La/d/d/j$a;

    aput-object v1, v0, v2

    sput-object v0, La/d/d/j$a;->b:[La/d/d/j$a;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/d/d/j$a;
    .locals 1

    .prologue
    .line 62
    const-class v0, La/d/d/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/d/d/j$a;

    return-object v0
.end method

.method public static values()[La/d/d/j$a;
    .locals 1

    .prologue
    .line 62
    sget-object v0, La/d/d/j$a;->b:[La/d/d/j$a;

    invoke-virtual {v0}, [La/d/d/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/d/d/j$a;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, La/d/d/j$a;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

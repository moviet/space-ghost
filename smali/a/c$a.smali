.class public final enum La/c$a;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "La/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:La/c$a;

.field public static final enum b:La/c$a;

.field public static final enum c:La/c$a;

.field private static final synthetic d:[La/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, La/c$a;

    const-string v1, "OnNext"

    invoke-direct {v0, v1, v2}, La/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c$a;->a:La/c$a;

    new-instance v0, La/c$a;

    const-string v1, "OnError"

    invoke-direct {v0, v1, v3}, La/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c$a;->b:La/c$a;

    new-instance v0, La/c$a;

    const-string v1, "OnCompleted"

    invoke-direct {v0, v1, v4}, La/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, La/c$a;->c:La/c$a;

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [La/c$a;

    sget-object v1, La/c$a;->a:La/c$a;

    aput-object v1, v0, v2

    sget-object v1, La/c$a;->b:La/c$a;

    aput-object v1, v0, v3

    sget-object v1, La/c$a;->c:La/c$a;

    aput-object v1, v0, v4

    sput-object v0, La/c$a;->d:[La/c$a;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/c$a;
    .locals 1

    .prologue
    .line 175
    const-class v0, La/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/c$a;

    return-object v0
.end method

.method public static values()[La/c$a;
    .locals 1

    .prologue
    .line 175
    sget-object v0, La/c$a;->d:[La/c$a;

    invoke-virtual {v0}, [La/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/c$a;

    return-object v0
.end method

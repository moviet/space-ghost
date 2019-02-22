.class final La/f/i;
.super La/f/h;
.source "RxJavaSingleExecutionHookDefault.java"


# static fields
.field private static final a:La/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, La/f/i;

    invoke-direct {v0}, La/f/i;-><init>()V

    sput-object v0, La/f/i;->a:La/f/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, La/f/h;-><init>()V

    .line 29
    return-void
.end method

.method public static a()La/f/h;
    .locals 1

    .prologue
    .line 32
    sget-object v0, La/f/i;->a:La/f/i;

    return-object v0
.end method

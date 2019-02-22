.class final La/f/e;
.super La/f/d;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final a:La/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, La/f/e;

    invoke-direct {v0}, La/f/e;-><init>()V

    sput-object v0, La/f/e;->a:La/f/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, La/f/d;-><init>()V

    .line 28
    return-void
.end method

.method public static a()La/f/d;
    .locals 1

    .prologue
    .line 31
    sget-object v0, La/f/e;->a:La/f/e;

    return-object v0
.end method

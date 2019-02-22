.class public La/a/a/b;
.super Ljava/lang/Object;
.source "RxAndroidSchedulersHook.java"


# static fields
.field private static final a:La/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, La/a/a/b;

    invoke-direct {v0}, La/a/a/b;-><init>()V

    sput-object v0, La/a/a/b;->a:La/a/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/a/a/b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, La/a/a/b;->a:La/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a(La/c/a;)La/c/a;
    .locals 0

    .prologue
    .line 45
    return-object p1
.end method

.method public b()La/g;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

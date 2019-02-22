.class public final La/d/c/e;
.super La/g;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/d/c/e$a;
    }
.end annotation


# static fields
.field public static final b:La/d/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, La/d/c/e;

    invoke-direct {v0}, La/d/c/e;-><init>()V

    sput-object v0, La/d/c/e;->b:La/d/c/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, La/g;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()La/g$a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, La/d/c/e$a;

    invoke-direct {v0, p0}, La/d/c/e$a;-><init>(La/d/c/e;)V

    return-object v0
.end method

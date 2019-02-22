.class public final La/i/c;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/i/c$a;
    }
.end annotation


# static fields
.field private static final a:La/i/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, La/i/c$a;

    invoke-direct {v0}, La/i/c$a;-><init>()V

    sput-object v0, La/i/c;->a:La/i/c$a;

    return-void
.end method

.method public static a()La/k;
    .locals 1

    .prologue
    .line 67
    sget-object v0, La/i/c;->a:La/i/c$a;

    return-object v0
.end method

.method public static a(La/c/a;)La/k;
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, La/i/a;->a(La/c/a;)La/i/a;

    move-result-object v0

    return-object v0
.end method

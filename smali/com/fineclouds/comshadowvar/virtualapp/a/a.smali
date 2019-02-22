.class public Lcom/fineclouds/spaceghostq1/virtualapp/a/a;
.super Ljava/lang/Object;
.source "DualUIKit.java"


# static fields
.field private static final a:Lorg/jdeferred/android/a;

.field private static final b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lorg/jdeferred/android/a;

    invoke-direct {v0}, Lorg/jdeferred/android/a;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/a/a;->a:Lorg/jdeferred/android/a;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/a/a;->b:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lorg/jdeferred/android/a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/a/a;->a:Lorg/jdeferred/android/a;

    return-object v0
.end method

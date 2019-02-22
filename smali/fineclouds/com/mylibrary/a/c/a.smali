.class public Lfineclouds/com/mylibrary/a/c/a;
.super Ljava/lang/Object;
.source "ActionContainer.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lfineclouds/com/mylibrary/a/c/d;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "headInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lfineclouds/com/mylibrary/a/c/d;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/a;->b:Lfineclouds/com/mylibrary/a/c/d;

    .line 33
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lfineclouds/com/mylibrary/a/c/a;->a:Ljava/util/List;

    .line 25
    return-void
.end method

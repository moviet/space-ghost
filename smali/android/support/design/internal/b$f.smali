.class Landroid/support/design/internal/b$f;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/support/design/internal/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/view/menu/h;


# direct methods
.method private constructor <init>(Landroid/support/v7/view/menu/h;)V
    .locals 0

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p1, p0, Landroid/support/design/internal/b$f;->a:Landroid/support/v7/view/menu/h;

    .line 612
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/view/menu/h;Landroid/support/design/internal/b$1;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1}, Landroid/support/design/internal/b$f;-><init>(Landroid/support/v7/view/menu/h;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/view/menu/h;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Landroid/support/design/internal/b$f;->a:Landroid/support/v7/view/menu/h;

    return-object v0
.end method

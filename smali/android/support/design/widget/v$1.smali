.class Landroid/support/design/widget/v$1;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"

# interfaces
.implements Landroid/support/design/widget/v$c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/v;->a(Landroid/support/design/widget/v$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/v$a;

.field final synthetic b:Landroid/support/design/widget/v;


# direct methods
.method constructor <init>(Landroid/support/design/widget/v;Landroid/support/design/widget/v$a;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Landroid/support/design/widget/v$1;->b:Landroid/support/design/widget/v;

    iput-object p2, p0, Landroid/support/design/widget/v$1;->a:Landroid/support/design/widget/v$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/support/design/widget/v$1;->a:Landroid/support/design/widget/v$a;

    iget-object v1, p0, Landroid/support/design/widget/v$1;->b:Landroid/support/design/widget/v;

    invoke-interface {v0, v1}, Landroid/support/design/widget/v$a;->a(Landroid/support/design/widget/v;)V

    .line 134
    return-void
.end method

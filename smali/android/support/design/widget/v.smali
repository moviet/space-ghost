.class Landroid/support/design/widget/v;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/v$c;,
        Landroid/support/design/widget/v$b;,
        Landroid/support/design/widget/v$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/design/widget/v$c;


# direct methods
.method constructor <init>(Landroid/support/design/widget/v$c;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    .line 114
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0}, Landroid/support/design/widget/v$c;->a()V

    .line 118
    return-void
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/v$c;->a(FF)V

    .line 174
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/v$c;->a(I)V

    .line 182
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0, p1, p2}, Landroid/support/design/widget/v$c;->a(II)V

    .line 166
    return-void
.end method

.method public a(Landroid/support/design/widget/v$a;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    new-instance v1, Landroid/support/design/widget/v$1;

    invoke-direct {v1, p0, p1}, Landroid/support/design/widget/v$1;-><init>(Landroid/support/design/widget/v;Landroid/support/design/widget/v$a;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v$c;->a(Landroid/support/design/widget/v$c$b;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/v$c;->a(Landroid/support/design/widget/v$c$b;)V

    goto :goto_0
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/v$c;->a(Landroid/view/animation/Interpolator;)V

    .line 126
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0}, Landroid/support/design/widget/v$c;->b()Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0}, Landroid/support/design/widget/v$c;->c()I

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0}, Landroid/support/design/widget/v$c;->d()F

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/design/widget/v;->a:Landroid/support/design/widget/v$c;

    invoke-virtual {v0}, Landroid/support/design/widget/v$c;->e()V

    .line 186
    return-void
.end method

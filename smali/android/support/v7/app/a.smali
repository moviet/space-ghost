.class public abstract Landroid/support/v7/app/a;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/a$a;,
        Landroid/support/v7/app/a$c;,
        Landroid/support/v7/app/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1325
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 1000
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1001
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :cond_0
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1028
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1066
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 945
    if-eqz p1, :cond_0

    .line 946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_0
    return-void
.end method

.method public abstract b()Z
.end method

.method public c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1020
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 1024
    return-void
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 1032
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method h()V
    .locals 0

    .prologue
    .line 1081
    return-void
.end method

.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.super Ljava/lang/Object;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/eventbus/util/ErrorDialogManager$HoneycombManagerFragment;,
        Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;
    }
.end annotation


# static fields
.field public static a:Lorg/greenrobot/eventbus/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/eventbus/util/b",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected static a(Lorg/greenrobot/eventbus/util/d;)V
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/b;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/b;->a:Lorg/greenrobot/eventbus/util/a;

    iget-boolean v0, v0, Lorg/greenrobot/eventbus/util/a;->f:Z

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/b;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/b;->a:Lorg/greenrobot/eventbus/util/a;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/a;->g:Ljava/lang/String;

    .line 244
    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lorg/greenrobot/eventbus/c;->a:Ljava/lang/String;

    .line 247
    :cond_0
    const-string v1, "Error dialog manager received exception"

    iget-object v2, p0, Lorg/greenrobot/eventbus/util/d;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/d;)Z
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->b(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/d;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/d;)Z
    .locals 1

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1}, Lorg/greenrobot/eventbus/util/d;->b()Ljava/lang/Object;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

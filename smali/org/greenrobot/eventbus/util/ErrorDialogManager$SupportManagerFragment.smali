.class public Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SupportManagerFragment"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Bundle;

.field private c:Lorg/greenrobot/eventbus/c;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 58
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/b;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/b;->a:Lorg/greenrobot/eventbus/util/a;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/a;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->c:Lorg/greenrobot/eventbus/c;

    .line 59
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->c:Lorg/greenrobot/eventbus/c;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->d:Z

    .line 61
    return-void
.end method

.method public onEventMainThread(Lorg/greenrobot/eventbus/util/d;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->e:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a(Ljava/lang/Object;Lorg/greenrobot/eventbus/util/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-static {p1}, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a(Lorg/greenrobot/eventbus/util/d;)V

    .line 87
    invoke-virtual {p0}, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->l()Landroid/support/v4/app/n;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/support/v4/app/n;->b()Z

    .line 90
    const-string v0, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/n;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 91
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->a()V

    .line 96
    :cond_2
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/b;

    iget-boolean v2, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->a:Z

    iget-object v3, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->b:Landroid/os/Bundle;

    .line 97
    invoke-virtual {v0, p1, v2, v3}, Lorg/greenrobot/eventbus/util/b;->a(Lorg/greenrobot/eventbus/util/d;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const-string v2, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->a(Landroid/support/v4/app/n;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public r()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->r()V

    .line 66
    iget-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->d:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->d:Z

    .line 73
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lorg/greenrobot/eventbus/util/ErrorDialogManager;->a:Lorg/greenrobot/eventbus/util/b;

    iget-object v0, v0, Lorg/greenrobot/eventbus/util/b;->a:Lorg/greenrobot/eventbus/util/a;

    invoke-virtual {v0}, Lorg/greenrobot/eventbus/util/a;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->c:Lorg/greenrobot/eventbus/c;

    .line 71
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->c:Lorg/greenrobot/eventbus/c;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/greenrobot/eventbus/util/ErrorDialogManager$SupportManagerFragment;->c:Lorg/greenrobot/eventbus/c;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->b(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 79
    return-void
.end method

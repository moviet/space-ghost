.class Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$g;Landroid/support/v4/media/MediaBrowserServiceCompat$d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->a:Landroid/support/v4/media/MediaBrowserServiceCompat$d;

    invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$d;->a()Landroid/os/IBinder;

    move-result-object v0

    .line 369
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->b(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompat$b;

    .line 370
    if-nez v0, :cond_0

    .line 371
    const-string v0, "MediaBrowserServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSubscription for callback that isn\'t registered id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->d:Landroid/support/v4/media/MediaBrowserServiceCompat$g;

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$g;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->b:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$g$3;->c:Landroid/os/Bundle;

    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$b;Landroid/os/Bundle;)V

    goto :goto_0
.end method

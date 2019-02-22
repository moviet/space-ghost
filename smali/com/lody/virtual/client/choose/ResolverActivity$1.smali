.class Lcom/lody/virtual/client/choose/ResolverActivity$1;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lody/virtual/client/choose/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$1;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$1;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    .line 150
    return-void
.end method

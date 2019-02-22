.class final Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extendedInfo:Ljava/lang/CharSequence;

.field origIntent:Landroid/content/Intent;

.field ri:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/lody/virtual/client/choose/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    .line 416
    iput-object p3, p0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 417
    iput-object p4, p0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    .line 418
    iput-object p5, p0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    .line 419
    return-void
.end method

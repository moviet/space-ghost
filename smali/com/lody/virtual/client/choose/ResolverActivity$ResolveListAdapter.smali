.class final Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/choose/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitialHighlight:I

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/client/choose/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 436
    iput-object p1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 437
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 438
    iput-object p4, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 439
    iput-object p5, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 440
    iput p6, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLaunchedFromUid:I

    .line 441
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 443
    invoke-direct {p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 444
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;

    .line 694
    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mShowExtended:Z
    invoke-static {v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$200(Lcom/lody/virtual/client/choose/ResolverActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 697
    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    :goto_0
    iget-object v1, p2, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 702
    new-instance v1, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;

    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-direct {v1, v2}, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/lody/virtual/client/choose/ResolverActivity$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 704
    :cond_0
    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 705
    return-void

    .line 699
    :cond_1
    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 589
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 590
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 591
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 598
    :cond_0
    iget-object v6, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_1
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mShowExtended:Z
    invoke-static {v0, v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$202(Lcom/lody/virtual/client/choose/ResolverActivity;Z)Z

    .line 601
    const/4 v1, 0x0

    .line 602
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 603
    if-nez v0, :cond_3

    .line 604
    const/4 v1, 0x1

    .line 606
    :cond_3
    if-nez v1, :cond_9

    .line 608
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 610
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v0, p2, 0x1

    move v2, v0

    :goto_0
    if-gt v2, p3, :cond_8

    .line 612
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 613
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 615
    :cond_4
    const/4 v0, 0x1

    .line 622
    :goto_1
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    move v6, v0

    .line 624
    :goto_2
    if-gt p2, p3, :cond_1

    .line 625
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 626
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 630
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    .line 632
    :cond_5
    if-eqz v6, :cond_7

    .line 634
    iget-object v7, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 618
    :cond_6
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 638
    :cond_7
    iget-object v7, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    .line 639
    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 638
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v6, v1

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 472
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 473
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 475
    iput-object v4, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object v10, v0

    .line 502
    :goto_0
    if-eqz v10, :cond_f

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 505
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move v2, v9

    .line 506
    :goto_1
    if-ge v2, v7, :cond_6

    .line 507
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 514
    iget v3, v0, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v3, v5, :cond_0

    iget-boolean v3, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v3, v1, :cond_4

    :cond_0
    move v1, v7

    .line 516
    :goto_2
    if-ge v2, v1, :cond_5

    .line 517
    iget-object v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v3, v10, :cond_1

    .line 518
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 520
    :cond_1
    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 521
    add-int/lit8 v7, v1, -0x1

    move v1, v7

    goto :goto_2

    .line 477
    :cond_2
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000

    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    .line 479
    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mAlwaysUseOption:Z
    invoke-static {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$000(Lcom/lody/virtual/client/choose/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x40

    :goto_3
    or-int/2addr v0, v3

    .line 477
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move-object v10, v0

    goto :goto_0

    :cond_3
    move v0, v6

    .line 479
    goto :goto_3

    :cond_4
    move v1, v7

    .line 506
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v7, v1

    goto :goto_1

    .line 525
    :cond_6
    if-le v7, v9, :cond_7

    .line 526
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    .line 527
    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 528
    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 531
    :cond_7
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v0, :cond_b

    move v8, v6

    .line 532
    :goto_4
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v0, v0

    if-ge v8, v0, :cond_b

    .line 533
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v5, v0, v8

    .line 534
    if-nez v5, :cond_8

    .line 532
    :goto_5
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_4

    .line 537
    :cond_8
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    .line 538
    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 537
    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 539
    if-nez v0, :cond_9

    .line 540
    const-string v0, "ResolverActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 544
    :cond_9
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 545
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 546
    instance-of v0, v5, Landroid/content/pm/LabeledIntent;

    if-eqz v0, :cond_a

    move-object v0, v5

    .line 547
    check-cast v0, Landroid/content/pm/LabeledIntent;

    .line 548
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 549
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 550
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 551
    invoke-virtual {v0}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v0

    iput v0, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 553
    :cond_a
    iget-object v11, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    iget-object v3, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    .line 554
    invoke-virtual {v3}, Lcom/lody/virtual/client/choose/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/lody/virtual/client/choose/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 553
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 560
    :cond_b
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 562
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 563
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # setter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mShowExtended:Z
    invoke-static {v1, v6}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$202(Lcom/lody/virtual/client/choose/ResolverActivity;Z)Z

    move v2, v6

    move-object v4, v0

    .line 564
    :goto_6
    if-ge v9, v7, :cond_e

    .line 565
    if-nez v5, :cond_c

    .line 566
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 568
    :cond_c
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 569
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$100(Lcom/lody/virtual/client/choose/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 570
    if-nez v0, :cond_10

    .line 571
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v8, v0

    .line 573
    :goto_7
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 564
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 576
    :cond_d
    add-int/lit8 v3, v9, -0x1

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    move-object v5, v8

    move v2, v9

    move-object v4, v6

    .line 579
    goto :goto_8

    .line 582
    :cond_e
    add-int/lit8 v3, v7, -0x1

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 584
    :cond_f
    return-void

    :cond_10
    move-object v8, v0

    goto :goto_7
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInitialHighlight()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInitialHighlight:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 671
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 676
    if-nez p2, :cond_0

    .line 677
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/lody/virtual/R$layout;->resolve_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 679
    new-instance v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;

    invoke-direct {v0, p2}, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 680
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 683
    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    # getter for: Lcom/lody/virtual/client/choose/ResolverActivity;->mIconSize:I
    invoke-static {v1}, Lcom/lody/virtual/client/choose/ResolverActivity;->access$300(Lcom/lody/virtual/client/choose/ResolverActivity;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, p2, v0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;)V

    .line 689
    return-object p2
.end method

.method public handlePackagesChanged()V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->getCount()I

    .line 448
    invoke-direct {p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->rebuildList()V

    .line 449
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 450
    invoke-virtual {p0}, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 451
    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->this$0:Lcom/lody/virtual/client/choose/ResolverActivity;

    invoke-virtual {v0}, Lcom/lody/virtual/client/choose/ResolverActivity;->finish()V

    .line 455
    :cond_0
    return-void
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    .line 652
    new-instance v2, Landroid/content/Intent;

    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 654
    const/high16 v1, 0x3000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 657
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 659
    return-object v2

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/lody/virtual/client/choose/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v0, Lcom/lody/virtual/client/choose/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

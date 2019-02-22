.class public abstract Lcom/lody/virtual/server/pm/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/lody/virtual/server/pm/IntentResolver$1;

    invoke-direct {v0}, Lcom/lody/virtual/server/pm/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/lody/virtual/server/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    return-void
.end method

.method private final addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 425
    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v0

    .line 427
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    aput-object p3, v0, v4

    .line 444
    :goto_0
    return-void

    .line 430
    :cond_0
    array-length v2, v0

    move v1, v2

    .line 432
    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v0, v3

    if-nez v3, :cond_1

    .line 433
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 435
    :cond_1
    if-ge v1, v2, :cond_2

    .line 436
    aput-object p3, v0, v1

    goto :goto_0

    .line 438
    :cond_2
    mul-int/lit8 v1, v2, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 439
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    aput-object p3, v1, v2

    .line 441
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/lody/virtual/server/pm/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 572
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 574
    if-eqz p7, :cond_0

    move-object/from16 v0, p7

    array-length v1, v0

    move v8, v1

    .line 575
    :goto_0
    const/4 v9, 0x0

    .line 578
    const/4 v1, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v8, :cond_6

    aget-object v1, p7, v10

    if-eqz v1, :cond_6

    .line 583
    if-eqz v11, :cond_1

    invoke-virtual {p0, v11, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v9

    .line 578
    :goto_2
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v9, v1

    goto :goto_1

    .line 574
    :cond_0
    const/4 v1, 0x0

    move v8, v1

    goto :goto_0

    .line 587
    :cond_1
    move-object/from16 v0, p8

    invoke-virtual {p0, v1, v0}, Lcom/lody/virtual/server/pm/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v9

    .line 588
    goto :goto_2

    .line 591
    :cond_2
    const-string v7, "IntentResolver"

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    .line 592
    if-ltz v3, :cond_9

    .line 593
    if-eqz p4, :cond_3

    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 594
    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/lody/virtual/server/pm/IntentResolver;->newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;

    move-result-object v1

    .line 595
    if-eqz v1, :cond_4

    .line 596
    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v1, v9

    .line 598
    goto :goto_2

    .line 599
    :cond_5
    const/4 v1, 0x1

    goto :goto_2

    .line 604
    :cond_6
    if-eqz v9, :cond_7

    .line 605
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 606
    const-string v1, "IntentResolver"

    const-string v2, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    :cond_7
    :goto_3
    return-void

    .line 607
    :cond_8
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7

    .line 608
    const-string v1, "IntentResolver"

    const-string v2, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    move v1, v9

    goto :goto_2
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    if-eqz p1, :cond_4

    .line 181
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 182
    aget-object v2, p1, v1

    .line 183
    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_1
    return-object v0

    .line 186
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/lody/virtual/server/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    if-nez v0, :cond_2

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    .line 124
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 125
    if-eq v2, v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 128
    :goto_1
    if-ge v1, v2, :cond_2

    .line 129
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 134
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 135
    if-ne v2, v1, :cond_0

    move v1, v0

    .line 138
    :goto_2
    if-ge v1, v2, :cond_3

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 143
    :cond_3
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 144
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    .line 145
    if-ne v1, v2, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    .line 149
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 150
    if-ne v2, v1, :cond_0

    move v1, v0

    .line 153
    :goto_3
    if-ge v1, v2, :cond_4

    .line 154
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    :cond_4
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 159
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    .line 160
    if-ne v1, v2, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 164
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    .line 165
    if-ne v1, v2, :cond_0

    .line 168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    .line 169
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 170
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    .line 171
    if-ne v1, v2, :cond_0

    .line 175
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/lody/virtual/server/pm/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lody/virtual/server/pm/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 510
    if-nez p2, :cond_0

    .line 522
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 515
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 517
    add-int/lit8 v1, v1, 0x1

    .line 520
    invoke-direct {p0, p3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 522
    goto :goto_0
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 448
    if-nez v4, :cond_0

    .line 475
    :goto_0
    return v2

    :cond_0
    move v1, v2

    .line 453
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 454
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    add-int/lit8 v1, v1, 0x1

    .line 459
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 460
    if-lez v5, :cond_1

    .line 461
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 466
    :goto_2
    iget-object v6, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 468
    if-lez v5, :cond_2

    .line 469
    iget-object v3, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_1

    .line 463
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 471
    :cond_2
    iget-object v3, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->addFilter(Ljava/util/HashMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 475
    goto :goto_0
.end method

.method private final remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 542
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 543
    if-eqz v0, :cond_4

    .line 544
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 545
    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 546
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 548
    :goto_1
    if-ltz v2, :cond_3

    .line 549
    aget-object v3, v0, v2

    if-ne v3, p3, :cond_2

    .line 550
    sub-int v3, v1, v2

    .line 551
    if-lez v3, :cond_1

    .line 552
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 554
    :cond_1
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 555
    add-int/lit8 v1, v1, -0x1

    .line 548
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 558
    :cond_3
    if-gez v1, :cond_5

    .line 559
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    :cond_4
    :goto_2
    return-void

    .line 560
    :cond_5
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_4

    .line 561
    add-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v2

    .line 562
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 526
    if-nez p2, :cond_0

    .line 538
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 531
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    add-int/lit8 v1, v1, 0x1

    .line 536
    invoke-direct {p0, p3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 538
    goto :goto_0
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 479
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 480
    if-nez v4, :cond_0

    .line 506
    :goto_0
    return v2

    :cond_0
    move v1, v2

    .line 485
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 486
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    add-int/lit8 v1, v1, 0x1

    .line 491
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 492
    if-lez v5, :cond_1

    .line 493
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 498
    :goto_2
    iget-object v6, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v6, v3, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 500
    if-lez v5, :cond_2

    .line 501
    iget-object v3, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 495
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 503
    :cond_2
    iget-object v3, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-direct {p0, v3, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->remove_all_objects(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 506
    goto :goto_0
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 113
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 114
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 117
    :cond_0
    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 120
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 376
    const/4 v0, 0x1

    return v0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 419
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 421
    return-void
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lody/virtual/server/pm/IntentResolver$IteratorWrapper;-><init>(Lcom/lody/virtual/server/pm/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 413
    const-string v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 200
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 217
    :cond_0
    :goto_0
    return-object v1

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 203
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 206
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 208
    :cond_3
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 210
    invoke-direct {p0, v0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 211
    if-nez v1, :cond_5

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)TR;"
        }
    .end annotation

    .prologue
    .line 399
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 271
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    .line 275
    :goto_0
    if-eqz v3, :cond_0

    .line 276
    const-string v0, "IntentResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resolving type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scheme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 280
    const/4 v2, 0x0

    .line 281
    const/4 v1, 0x0

    .line 282
    const/4 v4, 0x0

    .line 286
    if-eqz p2, :cond_12

    .line 287
    const/16 v5, 0x2f

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 288
    if-lez v5, :cond_12

    .line 289
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 290
    const-string v9, "*"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 291
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v5, 0x2

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_b

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 297
    if-eqz v3, :cond_2

    .line 298
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First type cut: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 300
    if-eqz v3, :cond_d

    .line 301
    const-string v2, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second type cut: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v0

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    const-string v5, "*"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 314
    if-eqz v3, :cond_13

    .line 315
    const-string v5, "IntentResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Third type cut: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v10, v0

    move-object v11, v1

    move-object v7, v2

    .line 331
    :goto_2
    if-eqz v6, :cond_11

    .line 332
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 333
    if-eqz v3, :cond_3

    .line 334
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheme list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move-object v9, v0

    .line 340
    :goto_3
    if-nez p2, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 342
    if-eqz v3, :cond_4

    .line 343
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v7, v0

    .line 346
    :cond_5
    invoke-static {p1}, Lcom/lody/virtual/server/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    move-result-object v2

    .line 347
    if-eqz v7, :cond_6

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    .line 348
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 350
    :cond_6
    if-eqz v11, :cond_7

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    move-object v7, v11

    .line 351
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 353
    :cond_7
    if-eqz v10, :cond_8

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    move-object v7, v10

    .line 354
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 356
    :cond_8
    if-eqz v9, :cond_9

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    move-object v7, v9

    .line 357
    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 359
    :cond_9
    invoke-virtual {p0, v8}, Lcom/lody/virtual/server/pm/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 361
    if-eqz v3, :cond_10

    .line 362
    const-string v0, "IntentResolver"

    const-string v1, "Final result list:"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 364
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 304
    :cond_b
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mBaseTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 305
    if-eqz v3, :cond_c

    .line 306
    const-string v1, "IntentResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First type cut: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_c
    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mWildTypeToFilter:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 308
    if-eqz v3, :cond_d

    .line 309
    const-string v2, "IntentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second type cut: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    move-object v2, v0

    goto/16 :goto_1

    .line 316
    :cond_e
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 320
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/IntentFilter;

    .line 321
    if-eqz v3, :cond_f

    .line 322
    const-string v5, "IntentResolver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Typed Action list: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v9}, Lcom/lody/virtual/helper/utils/VLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    move-object v10, v1

    move-object v11, v2

    move-object v7, v0

    goto/16 :goto_2

    .line 367
    :cond_10
    return-object v8

    :cond_11
    move-object v9, v4

    goto/16 :goto_3

    :cond_12
    move-object v10, v1

    move-object v11, v2

    move-object v7, v0

    goto/16 :goto_2

    :cond_13
    move-object v10, v0

    move-object v11, v1

    move-object v7, v2

    goto/16 :goto_2
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 254
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 258
    :goto_0
    invoke-static {p1}, Lcom/lody/virtual/server/pm/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Lcom/lody/virtual/server/pm/FastImmutableArraySet;

    move-result-object v2

    .line 259
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v0

    .line 261
    :goto_1
    if-ge v9, v10, :cond_1

    .line 262
    invoke-virtual {p4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/IntentFilter;

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/lody/virtual/server/pm/IntentResolver;->buildResolveList(Landroid/content/Intent;Lcom/lody/virtual/server/pm/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;)V

    .line 261
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    move v3, v0

    .line 256
    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0, v8}, Lcom/lody/virtual/server/pm/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 265
    return-object v8
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 223
    iget-object v0, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mFilters:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mSchemeToFilter:Ljava/util/HashMap;

    const-string v2, "      Scheme: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v0

    .line 229
    const-string v1, "      Type: "

    invoke-direct {p0, p1, v1}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 230
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mActionToFilter:Ljava/util/HashMap;

    const-string v3, "      Action: "

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 233
    :cond_0
    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/lody/virtual/server/pm/IntentResolver;->mTypedActionToFilter:Ljava/util/HashMap;

    const-string v2, "      TypedAction: "

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lody/virtual/server/pm/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Ljava/util/HashMap;Ljava/lang/String;)I

    .line 236
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lcom/lody/virtual/server/pm/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 405
    return-void
.end method

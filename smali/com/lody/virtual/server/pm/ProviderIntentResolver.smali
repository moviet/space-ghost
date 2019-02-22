.class final Lcom/lody/virtual/server/pm/ProviderIntentResolver;
.super Lcom/lody/virtual/server/pm/IntentResolver;
.source "ProviderIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/lody/virtual/server/pm/IntentResolver;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already defined; ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/lody/virtual/helper/utils/VLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 70
    :goto_0
    if-ge v1, v2, :cond_0

    .line 71
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 72
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 70
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 24
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 91
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 92
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 93
    invoke-static {v0, v3}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 97
    :goto_1
    return v0

    .line 90
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 24
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .locals 1

    .prologue
    .line 102
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Landroid/content/pm/ResolveInfo;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 118
    iget-object v1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 119
    iget v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    invoke-static {v1, v0}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 120
    if-nez v2, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    .line 123
    :cond_0
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 124
    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 125
    iget v2, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 126
    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 129
    iget-object v1, v1, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget v1, v1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 130
    iput p2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 131
    iget-boolean v1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 132
    iget v1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 133
    iget-object v1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 134
    iget v1, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 24
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iput p3, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    .line 35
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    if-nez p4, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    .line 43
    :cond_0
    iput p3, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mFlags:I

    .line 44
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 45
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    :goto_2
    if-ge v2, v3, :cond_3

    .line 50
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 51
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 54
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 44
    goto :goto_1

    .line 58
    :cond_3
    invoke-super {p0, p1, p2, v1, v4}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->mProviders:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 81
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 82
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    return-void
.end method

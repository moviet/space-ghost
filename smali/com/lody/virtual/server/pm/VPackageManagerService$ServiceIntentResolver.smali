.class final Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;
.super Lcom/lody/virtual/server/pm/IntentResolver;
.source "VPackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/server/pm/VPackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lody/virtual/server/pm/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;


# direct methods
.method private constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V
    .locals 1

    .prologue
    .line 925
    iput-object p1, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->this$0:Lcom/lody/virtual/server/pm/VPackageManagerService;

    invoke-direct {p0}, Lcom/lody/virtual/server/pm/IntentResolver;-><init>()V

    .line 927
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/lody/virtual/server/pm/VPackageManagerService;Lcom/lody/virtual/server/pm/VPackageManagerService$1;)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;-><init>(Lcom/lody/virtual/server/pm/VPackageManagerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addService(Landroid/content/pm/PackageParser$Service;)V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 970
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 971
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 972
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 970
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 974
    :cond_0
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 925
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 992
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 993
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 994
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 995
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 996
    invoke-static {v0, v3}, Lcom/lody/virtual/helper/compat/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const/4 v0, 0x0

    .line 1000
    :goto_1
    return v0

    .line 993
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1000
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 925
    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 925
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .locals 1

    .prologue
    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1

    .prologue
    .line 925
    check-cast p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 925
    invoke-virtual {p0, p1}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .locals 1

    .prologue
    .line 1005
    new-array v0, p1, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 1020
    iget-object v1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 1021
    iget v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-static {v1, v0}, Lcom/lody/virtual/helper/compat/PackageParserCompat;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 1022
    if-nez v2, :cond_0

    .line 1023
    const/4 v0, 0x0

    .line 1037
    :goto_0
    return-object v0

    .line 1025
    :cond_0
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1026
    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1027
    iget v2, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    .line 1028
    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1030
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getPriority()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1031
    iget-object v1, v1, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget v1, v1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1032
    iput p2, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1033
    iget-boolean v1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasDefault:Z

    iput-boolean v1, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1034
    iget v1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->labelRes:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1035
    iget-object v1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1036
    iget v1, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->icon:I

    iput v1, v0, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Landroid/content/pm/ResolveInfo;

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
    .line 936
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 937
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
    .line 931
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 932
    invoke-super {p0, p1, p2, p3}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 931
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
            "Landroid/content/pm/PackageParser$Service;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 942
    if-nez p4, :cond_0

    .line 943
    const/4 v0, 0x0

    .line 959
    :goto_0
    return-object v0

    .line 945
    :cond_0
    iput p3, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 946
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 947
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 948
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 951
    :goto_2
    if-ge v2, v3, :cond_3

    .line 952
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 953
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 954
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 955
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 956
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v2

    .line 946
    goto :goto_1

    .line 959
    :cond_3
    invoke-super {p0, p1, p2, v1, v4}, Lcom/lody/virtual/server/pm/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final removeService(Landroid/content/pm/PackageParser$Service;)V
    .locals 3

    .prologue
    .line 977
    iget-object v0, p0, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 984
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 985
    iget-object v0, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 986
    invoke-virtual {p0, v0}, Lcom/lody/virtual/server/pm/VPackageManagerService$ServiceIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 984
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 988
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
    .line 1042
    sget-object v0, Lcom/lody/virtual/server/pm/VPackageManagerService;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1043
    return-void
.end method

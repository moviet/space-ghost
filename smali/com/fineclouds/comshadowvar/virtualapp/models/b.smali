.class final synthetic Lcom/fineclouds/spaceghostq1/virtualapp/models/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final a:Lcom/fineclouds/spaceghostq1/virtualapp/models/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/b;

    invoke-direct {v0}, Lcom/fineclouds/spaceghostq1/virtualapp/models/b;-><init>()V

    sput-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/b;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/fineclouds/spaceghostq1/virtualapp/models/b;->a:Lcom/fineclouds/spaceghostq1/virtualapp/models/b;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    check-cast p2, Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;

    invoke-static {p1, p2}, Lcom/fineclouds/spaceghostq1/virtualapp/models/a;->a(Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;Lcom/fineclouds/spaceghostq1/virtualapp/models/DualAppModel;)I

    move-result v0

    return v0
.end method

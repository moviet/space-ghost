.class final synthetic Lcom/fineclouds/spaceghostq1/dual/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;


# direct methods
.method private constructor <init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/a;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    return-void
.end method

.method public static a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/ui/a;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/dual/ui/a;-><init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/a;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    invoke-virtual {v0}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a()V

    return-void
.end method

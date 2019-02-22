.class final synthetic Lcom/fineclouds/spaceghostq1/dual/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jdeferred/e;


# instance fields
.field private final a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;


# direct methods
.method private constructor <init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/dual/ui/b;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    return-void
.end method

.method public static a(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)Lorg/jdeferred/e;
    .locals 1

    new-instance v0, Lcom/fineclouds/spaceghostq1/dual/ui/b;

    invoke-direct {v0, p0}, Lcom/fineclouds/spaceghostq1/dual/ui/b;-><init>(Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/dual/ui/b;->a:Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/fineclouds/spaceghostq1/dual/ui/LoadingActivity;->a(Ljava/lang/Void;)V

    return-void
.end method

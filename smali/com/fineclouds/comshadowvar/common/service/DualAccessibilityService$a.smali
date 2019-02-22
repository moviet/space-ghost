.class public Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;
.super Landroid/os/Binder;
.source "DualAccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;->a:Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService$a;->a:Lcom/fineclouds/spaceghostq1/common/service/DualAccessibilityService;

    return-object v0
.end method

.class Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;
.super Ljava/lang/Object;
.source "NavSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;


# direct methods
.method constructor <init>(Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    iget-object v1, p0, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity$2;->a:Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;

    invoke-static {v1}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->a(Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lfineclouds/com/mylibrary/c/b;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/fineclouds/spaceghostq1/privacypolicy/NavSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.class Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;
.super Ljava/lang/Object;
.source "PendIntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectInfo"
.end annotation


# instance fields
.field mPendingIntent:Landroid/app/PendingIntent;

.field rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->this$0:Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p2, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->rect:Landroid/graphics/Rect;

    .line 165
    iput-object p3, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/PendIntentCompat$RectInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 166
    return-void
.end method

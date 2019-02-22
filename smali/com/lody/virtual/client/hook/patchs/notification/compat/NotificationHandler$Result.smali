.class public Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;
.super Ljava/lang/Object;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field public code:I

.field public notification:Landroid/app/Notification;

.field final synthetic this$0:Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;


# direct methods
.method constructor <init>(Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->this$0:Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p2, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->code:I

    .line 111
    iput-object p3, p0, Lcom/lody/virtual/client/hook/patchs/notification/compat/NotificationHandler$Result;->notification:Landroid/app/Notification;

    .line 112
    return-void
.end method

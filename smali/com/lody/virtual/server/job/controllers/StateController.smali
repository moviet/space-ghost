.class public abstract Lcom/lody/virtual/server/job/controllers/StateController;
.super Ljava/lang/Object;
.source "StateController.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mStateChangedListener:Lcom/lody/virtual/server/job/StateChangedListener;


# direct methods
.method public constructor <init>(Lcom/lody/virtual/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/lody/virtual/server/job/controllers/StateController;->mStateChangedListener:Lcom/lody/virtual/server/job/StateChangedListener;

    .line 21
    iput-object p2, p0, Lcom/lody/virtual/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract dumpControllerState(Ljava/io/PrintWriter;)V
.end method

.method public abstract maybeStartTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
.end method

.method public abstract maybeStopTrackingJob(Lcom/lody/virtual/server/job/controllers/JobStatus;)V
.end method

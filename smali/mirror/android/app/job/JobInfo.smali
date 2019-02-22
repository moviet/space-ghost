.class public Lmirror/android/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static hasEarlyConstraint:Lmirror/RefBoolean;

.field public static hasLateConstraint:Lmirror/RefBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    const-class v0, Lmirror/android/app/job/JobInfo;

    const-class v1, Landroid/app/job/JobInfo;

    invoke-static {v0, v1}, Lmirror/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lmirror/android/app/job/JobInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

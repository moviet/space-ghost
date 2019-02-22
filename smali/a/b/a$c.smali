.class final La/b/a$c;
.super La/b/a$b;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, La/b/a$b;-><init>()V

    .line 243
    iput-object p1, p0, La/b/a$c;->a:Ljava/io/PrintStream;

    .line 244
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, La/b/a$c;->a:Ljava/io/PrintStream;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, La/b/a$c;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

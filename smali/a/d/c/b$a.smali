.class final La/d/c/b$a;
.super La/g$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/d/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:La/d/d/i;

.field private final b:La/i/b;

.field private final c:La/d/d/i;

.field private final d:La/d/c/b$c;


# direct methods
.method constructor <init>(La/d/c/b$c;)V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, La/g$a;-><init>()V

    .line 140
    new-instance v0, La/d/d/i;

    invoke-direct {v0}, La/d/d/i;-><init>()V

    iput-object v0, p0, La/d/c/b$a;->a:La/d/d/i;

    .line 141
    new-instance v0, La/i/b;

    invoke-direct {v0}, La/i/b;-><init>()V

    iput-object v0, p0, La/d/c/b$a;->b:La/i/b;

    .line 142
    new-instance v0, La/d/d/i;

    const/4 v1, 0x2

    new-array v1, v1, [La/k;

    const/4 v2, 0x0

    iget-object v3, p0, La/d/c/b$a;->a:La/d/d/i;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, La/d/c/b$a;->b:La/i/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, La/d/d/i;-><init>([La/k;)V

    iput-object v0, p0, La/d/c/b$a;->c:La/d/d/i;

    .line 146
    iput-object p1, p0, La/d/c/b$a;->d:La/d/c/b$c;

    .line 148
    return-void
.end method


# virtual methods
.method public a(La/c/a;)La/k;
    .locals 6

    .prologue
    .line 162
    invoke-virtual {p0}, La/d/c/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/d/c/b$a;->d:La/d/c/b$c;

    new-instance v1, La/d/c/b$a$1;

    invoke-direct {v1, p0, p1}, La/d/c/b$a$1;-><init>(La/d/c/b$a;La/c/a;)V

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, La/d/c/b$a;->a:La/d/d/i;

    invoke-virtual/range {v0 .. v5}, La/d/c/b$c;->a(La/c/a;JLjava/util/concurrent/TimeUnit;La/d/d/i;)La/d/c/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a(La/c/a;JLjava/util/concurrent/TimeUnit;)La/k;
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p0}, La/d/c/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, La/i/c;->a()La/k;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/d/c/b$a;->d:La/d/c/b$c;

    new-instance v1, La/d/c/b$a$2;

    invoke-direct {v1, p0, p1}, La/d/c/b$a$2;-><init>(La/d/c/b$a;La/c/a;)V

    iget-object v5, p0, La/d/c/b$a;->b:La/i/b;

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, La/d/c/b$c;->a(La/c/a;JLjava/util/concurrent/TimeUnit;La/i/b;)La/d/c/h;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, La/d/c/b$a;->c:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->b()Z

    move-result v0

    return v0
.end method

.method public d_()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, La/d/c/b$a;->c:La/d/d/i;

    invoke-virtual {v0}, La/d/d/i;->d_()V

    .line 153
    return-void
.end method

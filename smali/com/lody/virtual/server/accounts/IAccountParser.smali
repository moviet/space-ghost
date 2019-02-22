.class public interface abstract Lcom/lody/virtual/server/accounts/IAccountParser;
.super Ljava/lang/Object;
.source "IAccountParser.java"


# virtual methods
.method public abstract getParser(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract getResources(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

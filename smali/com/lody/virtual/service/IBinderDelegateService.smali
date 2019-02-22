.class public interface abstract Lcom/lody/virtual/service/IBinderDelegateService;
.super Ljava/lang/Object;
.source "IBinderDelegateService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lody/virtual/service/IBinderDelegateService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getComponent()Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getService()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

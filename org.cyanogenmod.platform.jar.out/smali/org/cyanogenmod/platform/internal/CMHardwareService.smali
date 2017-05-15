.class public Lorg/cyanogenmod/platform/internal/CMHardwareService;
.super Lorg/cyanogenmod/platform/internal/CMSystemService;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/hardware/ThermalUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;,
        Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;,
        Lorg/cyanogenmod/platform/internal/CMHardwareService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentThermalState:I

.field private final mDisplayModeMappings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterDisplayModes:Z

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcyanogenmod/hardware/IThermalListenerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    return-object v0
.end method

.method static synthetic -get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I
    .locals 1

    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    return v0
.end method

.method static synthetic -get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;
    .locals 1
    .param p1, "in"    # Lcyanogenmod/hardware/DisplayMode;

    .prologue
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->remapDisplayMode(Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 393
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 70
    const/4 v3, -0x1

    iput v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    .line 74
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 73
    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mDisplayModeMappings:Landroid/util/ArrayMap;

    .line 464
    new-instance v3, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;

    invoke-direct {v3, p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;-><init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    .line 394
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    .line 395
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->getImpl(Landroid/content/Context;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    .line 396
    const-string/jumbo v3, "cmhardware"

    iget-object v5, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v3, v5}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 398
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 399
    const v5, 0x3f05000a

    .line 398
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "mappings":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 401
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 402
    .local v0, "mapping":Ljava/lang/String;
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "split":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 404
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mDisplayModeMappings:Landroid/util/ArrayMap;

    aget-object v7, v2, v4

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "mapping":Ljava/lang/String;
    .end local v2    # "split":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 409
    const v4, 0x3f070007

    .line 408
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mFilterDisplayModes:Z

    .line 392
    return-void
.end method

.method private getImpl(Landroid/content/Context;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    new-instance v0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;

    invoke-direct {v0, p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;-><init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V

    return-object v0
.end method

.method private remapDisplayMode(Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;
    .locals 4
    .param p1, "in"    # Lcyanogenmod/hardware/DisplayMode;

    .prologue
    const/4 v2, 0x0

    .line 452
    if-nez p1, :cond_0

    .line 453
    return-object v2

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mDisplayModeMappings:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    new-instance v1, Lcyanogenmod/hardware/DisplayMode;

    iget v2, p1, Lcyanogenmod/hardware/DisplayMode;->id:I

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mDisplayModeMappings:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcyanogenmod/hardware/DisplayMode;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcyanogenmod/hardware/DisplayMode;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 458
    :cond_1
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mFilterDisplayModes:Z

    if-nez v0, :cond_2

    .line 459
    return-object p1

    .line 461
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    const-string/jumbo v0, "org.cyanogenmod.hardware"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 419
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 420
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cyanogenmod.intent.action.INITIALIZE_CM_HARDWARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    .line 423
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 422
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 418
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 429
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-static {p0}, Lorg/cyanogenmod/hardware/ThermalMonitor;->initialize(Lorg/cyanogenmod/hardware/ThermalUpdateCallback;)V

    .line 431
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 428
    :cond_0
    return-void
.end method

.method public setThermalState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 437
    iput p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mCurrentThermalState:I

    .line 438
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 439
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 440
    add-int/lit8 v1, v1, -0x1

    .line 442
    :try_start_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcyanogenmod/hardware/IThermalListenerCallback;

    invoke-interface {v2, p1}, Lcyanogenmod/hardware/IThermalListenerCallback;->onThermalChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 448
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 436
    return-void
.end method

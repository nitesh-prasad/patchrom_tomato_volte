.class public final Lorg/cyanogenmod/internal/util/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field private static final FLAG_SUSPENDED:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 111
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0
.end method

.method public static isAppEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 51
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {p0, p1, v0}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAppOnSdcard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 74
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->isAppEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isAppSuspended(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/internal/util/PackageManagerUtils;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 95
    if-eqz p0, :cond_0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

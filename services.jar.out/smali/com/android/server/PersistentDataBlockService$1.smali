.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    .line 486
    :cond_0
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 464
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 468
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    :try_start_2
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3, v2}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 476
    return v3

    .line 469
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "partition not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v6

    .line 475
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 478
    :catch_1
    move-exception v1

    .line 479
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error reading data block size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 480
    return v6

    .line 481
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 482
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 481
    throw v3
.end method

.method public getMaximumDataBlockSize()J
    .locals 8

    .prologue
    const-wide/32 v2, 0x19000

    .line 495
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 496
    .local v0, "actualSize":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .end local v0    # "actualSize":J
    :goto_0
    return-wide v0

    .restart local v0    # "actualSize":J
    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getOemUnlockEnabled()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    .line 459
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap1(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public read()[B
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 382
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    .line 383
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 384
    new-array v6, v8, [B

    return-object v6

    .line 389
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .local v3, "inputStream":Ljava/io/DataInputStream;
    :try_start_1
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    :try_start_2
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v5

    .line 399
    .local v5, "totalDataSize":I
    if-nez v5, :cond_1

    .line 400
    const/4 v6, 0x0

    new-array v6, v6, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 418
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 400
    :goto_0
    return-object v6

    .line 390
    .end local v3    # "inputStream":Ljava/io/DataInputStream;
    .end local v5    # "totalDataSize":I
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    return-object v10

    .line 419
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "inputStream":Ljava/io/DataInputStream;
    .restart local v5    # "totalDataSize":I
    :catch_1
    move-exception v2

    .line 420
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed to close OutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 403
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_5
    new-array v0, v5, [B

    .line 404
    .local v0, "data":[B
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    .line 405
    .local v4, "read":I
    if-ge v4, v5, :cond_2

    .line 407
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 408
    const-string/jumbo v9, "/"

    .line 407
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 418
    :try_start_7
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 409
    :goto_1
    return-object v10

    .line 419
    :catch_2
    move-exception v2

    .line 420
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 418
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 411
    :goto_2
    return-object v0

    .line 419
    :catch_3
    move-exception v2

    .line 420
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 396
    .end local v0    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "read":I
    .end local v5    # "totalDataSize":I
    :catchall_0
    move-exception v6

    :try_start_a
    monitor-exit v7

    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 413
    :catch_4
    move-exception v2

    .line 414
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_b
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to read data"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 418
    :try_start_c
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 415
    :goto_3
    return-object v10

    .line 419
    :catch_5
    move-exception v2

    .line 420
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 416
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 418
    :try_start_d
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    .line 416
    :goto_4
    throw v6

    .line 419
    :catch_6
    move-exception v2

    .line 420
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed to close OutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 444
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap7(Lcom/android/server/PersistentDataBlockService;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->-wrap6(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 452
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 442
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wipe()V
    .locals 4

    .prologue
    .line 427
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    .line 429
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v0

    .line 432
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 433
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "failed to wipe persistent partition"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 426
    return-void

    .line 435
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->-set0(Lcom/android/server/PersistentDataBlockService;Z)Z

    .line 436
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "persistent partition now wiped and unwritable"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([B)I
    .locals 13
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 332
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;I)V

    .line 335
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long v4, v8, v10

    .line 336
    .local v4, "maxBlockSize":J
    array-length v7, p1

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 338
    neg-long v8, v4

    long-to-int v7, v8

    return v7

    .line 343
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .local v6, "outputStream":Ljava/io/DataOutputStream;
    array-length v7, p1

    add-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 350
    .local v3, "headerAndData":Ljava/nio/ByteBuffer;
    const v7, 0x19901873

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 351
    array-length v7, p1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 354
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 355
    :try_start_1
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 356
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    .line 357
    return v12

    .line 344
    .end local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .end local v6    # "outputStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    return v12

    .line 361
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local v6    # "outputStream":Ljava/io/DataOutputStream;
    :cond_1
    const/16 v7, 0x20

    :try_start_2
    new-array v0, v7, [B

    .line 362
    .local v0, "checksum":[B
    const/4 v7, 0x0

    const/16 v9, 0x20

    invoke-virtual {v6, v0, v7, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 363
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    .line 364
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :try_start_3
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 372
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 373
    array-length v7, p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v8

    return v7

    .line 365
    .end local v0    # "checksum":[B
    :catch_1
    move-exception v2

    .line 366
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "failed writing to the persistent data block"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    :try_start_5
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v8

    .line 367
    return v12

    .line 368
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 369
    :try_start_6
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 354
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "checksum":[B
    :cond_2
    monitor-exit v8

    .line 375
    return v12
.end method

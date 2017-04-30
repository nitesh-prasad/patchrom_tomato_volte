.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;
    .param p2, "generationNumber"    # I

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1703
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1704
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    .line 1702
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1710
    const-string/jumbo v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "simchange mGenerationNumber="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1711
    const-string/jumbo v14, ", current generationNumber="

    .line 1710
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1711
    iget-object v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v14}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    .line 1710
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    iget v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get7(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-eq v12, v13, :cond_0

    return-void

    .line 1716
    :cond_0
    const-string/jumbo v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1718
    .local v7, "state":Ljava/lang/String;
    const-string/jumbo v12, "Tethering"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "got Sim changed to state "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", mSimNotLoadedSeen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1719
    iget-boolean v14, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1718
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-nez v12, :cond_1

    const-string/jumbo v12, "LOADED"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1724
    :cond_1
    :goto_0
    iget-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v12, :cond_3

    const-string/jumbo v12, "LOADED"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1725
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    .line 1727
    :try_start_0
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040096

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    .line 1729
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1730
    const v13, 0x1040098

    .line 1729
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1731
    .local v8, "tetherService":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1732
    .local v11, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1733
    :try_start_1
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1734
    .local v4, "ifaces":Ljava/util/Set;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iface$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1735
    .local v2, "iface":Ljava/lang/Object;
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1736
    .local v5, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1737
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v14, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-static {v14, v12}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1738
    new-instance v12, Ljava/lang/Integer;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1732
    .end local v2    # "iface":Ljava/lang/Object;
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13

    throw v12
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1759
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v12, "Tethering"

    const-string/jumbo v13, "no prov-check needed for new SIM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_2
    return-void

    .line 1721
    :cond_4
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    goto/16 :goto_0

    .line 1739
    .restart local v2    # "iface":Ljava/lang/Object;
    .restart local v3    # "iface$iterator":Ljava/util/Iterator;
    .restart local v4    # "ifaces":Ljava/util/Set;
    .restart local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .restart local v8    # "tetherService":Ljava/lang/String;
    .restart local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    :try_start_3
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v14, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v14, v12}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1740
    new-instance v12, Ljava/lang/Integer;

    const/4 v14, 0x0

    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1741
    :cond_6
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    check-cast v2, Ljava/lang/String;

    .end local v2    # "iface":Ljava/lang/Object;
    invoke-virtual {v12, v2}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1742
    new-instance v12, Ljava/lang/Integer;

    const/4 v14, 0x2

    invoke-direct {v12, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_7
    :try_start_4
    monitor-exit v13

    .line 1747
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "tetherType$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1748
    .local v9, "tetherType":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1749
    .local v6, "startProvIntent":Landroid/content/Intent;
    const-string/jumbo v12, "extraAddTetherType"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1750
    const-string/jumbo v12, "extraRunProvision"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1752
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1751
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1753
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v12, v12, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v12}, Lcom/android/server/connectivity/Tethering;->-get1(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v12, v6, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_3

    .line 1755
    .end local v6    # "startProvIntent":Landroid/content/Intent;
    .end local v9    # "tetherType":I
    :cond_8
    const-string/jumbo v12, "Tethering"

    const-string/jumbo v13, "re-evaluate provisioning"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1757
    .end local v3    # "iface$iterator":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tetherType$iterator":Ljava/util/Iterator;
    .end local v11    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_9
    const-string/jumbo v12, "Tethering"

    const-string/jumbo v13, "no prov-check needed for new SIM"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

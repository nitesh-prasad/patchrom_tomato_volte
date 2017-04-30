.class Landroid/net/dhcp/DhcpClient$DhcpState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 614
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 617
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 618
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    .line 619
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap1(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap2(Landroid/net/dhcp/DhcpClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    new-instance v1, Landroid/net/dhcp/DhcpClient$ReceiveThread;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {v1, v2}, Landroid/net/dhcp/DhcpClient$ReceiveThread;-><init>(Landroid/net/dhcp/DhcpClient;)V

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 621
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->start()V

    .line 616
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    .line 624
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap6(Landroid/net/dhcp/DhcpClient;)V

    .line 631
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-get11(Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/dhcp/DhcpClient$ReceiveThread;->halt()V

    .line 633
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-set2(Landroid/net/dhcp/DhcpClient;Landroid/net/dhcp/DhcpClient$ReceiveThread;)Landroid/net/dhcp/DhcpClient$ReceiveThread;

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap7(Landroid/net/dhcp/DhcpClient;)V

    .line 629
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 640
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 641
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 650
    const/4 v0, 0x0

    return v0

    .line 643
    :sswitch_0
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->-get13(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap15(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/IState;)V

    .line 644
    return v2

    .line 646
    :sswitch_1
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    const-string/jumbo v1, "Timed out"

    invoke-static {v0, v1}, Landroid/net/dhcp/DhcpClient;->-wrap9(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->-wrap10(Landroid/net/dhcp/DhcpClient;)V

    .line 648
    return v2

    .line 641
    nop

    :sswitch_data_0
    .sparse-switch
        0x30002 -> :sswitch_0
        0x30068 -> :sswitch_1
    .end sparse-switch
.end method

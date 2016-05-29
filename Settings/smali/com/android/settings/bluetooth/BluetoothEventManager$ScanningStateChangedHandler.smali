.class Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ext/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanningStateChangedHandler"
.end annotation


# instance fields
.field private final mStarted:Z

.field final synthetic this$0:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;Z)V
    .locals 0
    .param p2, "started"    # Z

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean p2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    .line 178
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    monitor-enter v3

    .line 182
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bluetooth/BluetoothCallback;

    .line 183
    .local v0, "callback":Lcom/android/settings_ext/bluetooth/BluetoothCallback;
    iget-boolean v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-interface {v0, v2}, Lcom/android/settings_ext/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    goto :goto_0

    .line 185
    .end local v0    # "callback":Lcom/android/settings_ext/bluetooth/BluetoothCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    iget-object v2, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->this$0:Lcom/android/settings_ext/bluetooth/BluetoothEventManager;

    # getter for: Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v2}, Lcom/android/settings_ext/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings_ext/bluetooth/BluetoothEventManager;)Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ext/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;->mStarted:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/bluetooth/CachedBluetoothDeviceManager;->onScanningStateChanged(Z)V

    .line 187
    invoke-static {p1}, Lcom/android/settings_ext/bluetooth/LocalBluetoothPreferences;->persistDiscoveringTimestamp(Landroid/content/Context;)V

    .line 188
    return-void
.end method

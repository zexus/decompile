.class Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;

.field final synthetic val$resid:I

.field final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;->this$0:Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog;

    iput-object p2, p0, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;->val$view:Landroid/widget/TextView;

    iput p3, p0, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;->val$resid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;->val$view:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings_ext/wifi/WriteWifiConfigToNfcDialog$4;->val$resid:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    return-void
.end method

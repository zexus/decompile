.class Lcom/android/settings_ext/MediaFormat$2;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/MediaFormat;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MediaFormat;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings_ext/MediaFormat$2;->this$0:Lcom/android/settings_ext/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/MediaFormat$2;->this$0:Lcom/android/settings_ext/MediaFormat;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ext/MediaFormat;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ext/MediaFormat;->access$000(Lcom/android/settings_ext/MediaFormat;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/MediaFormat$2;->this$0:Lcom/android/settings_ext/MediaFormat;

    # invokes: Lcom/android/settings_ext/MediaFormat;->establishFinalConfirmationState()V
    invoke-static {v0}, Lcom/android/settings_ext/MediaFormat;->access$100(Lcom/android/settings_ext/MediaFormat;)V

    .line 156
    :cond_0
    return-void
.end method

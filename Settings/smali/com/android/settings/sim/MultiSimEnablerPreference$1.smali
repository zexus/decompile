.class Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;
.super Ljava/lang/Object;
.source "MultiSimEnablerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/sim/MultiSimEnablerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 400
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->sendSubConfigurationRequest()V
    invoke-static {v0}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->access$000(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    # invokes: Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->setChecked(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->access$100(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->mSubSummary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->access$300(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->access$200(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09086a

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    # getter for: Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->access$200(Lcom/android/settings_ext/sim/MultiSimEnablerPreference;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09086b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 407
    :cond_2
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/sim/MultiSimEnablerPreference$1;->this$0:Lcom/android/settings_ext/sim/MultiSimEnablerPreference;

    invoke-virtual {v0}, Lcom/android/settings_ext/sim/MultiSimEnablerPreference;->update()V

    goto :goto_0
.end method

.class Lcom/android/settings_ext/RadioInfo$10;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/RadioInfo;)V
    .locals 0

    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/settings_ext/RadioInfo$10;->this$0:Lcom/android/settings_ext/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/settings_ext/RadioInfo$10;->this$0:Lcom/android/settings_ext/RadioInfo;

    # getter for: Lcom/android/settings_ext/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/settings_ext/RadioInfo;->access$1900(Lcom/android/settings_ext/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 904
    const/4 v0, 0x1

    return v0
.end method

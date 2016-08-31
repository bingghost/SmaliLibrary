.class public Lorg/bing/smalilibrary/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lorg/bing/smalilibrary/MainActivity;->setContentView(I)V

    .line 16
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 18
    invoke-static {}, Landroid/os/Debug;->startMethodTracing()V

    .line 21
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 24
    const-string v0, "Hello"

    invoke-static {v0}, Lcom/android/smalilib/LogUtil;->d(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 31
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 32
    return-void
.end method

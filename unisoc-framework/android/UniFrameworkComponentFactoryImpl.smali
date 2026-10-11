.class public Landroid/util/UniFrameworkComponentFactoryImpl;
.super Landroid/util/UniFrameworkComponentFactory;
.source "UniFrameworkComponentFactoryImpl.java"


# instance fields
.field private blacklist sUniWifiNl80211ManagerImpl:Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/UniFrameworkComponentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPowerManagerEx()Landroid/os/unisocpower/PowerManagerEx;
    .locals 1

    new-instance v0, Landroid/os/unisocpower/PowerManagerExImpl;

    invoke-direct {v0}, Landroid/os/unisocpower/PowerManagerExImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeAppWatchdog(Landroid/app/ActivityThread;)Landroid/app/AppWatchdog;
    .locals 1

    new-instance v0, Landroid/app/AppWatchdogImpl;

    invoke-direct {v0, p1}, Landroid/app/AppWatchdogImpl;-><init>(Landroid/app/ActivityThread;)V

    return-object v0
.end method

.method public blacklist makeLinkTurboManager(Landroid/content/Context;)Landroid/net/LinkTurboManager;
    .locals 1

    new-instance v0, Landroid/net/LinkTurboManagerImpl;

    invoke-direct {v0, p1}, Landroid/net/LinkTurboManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeLinkTurboMonitor(Landroid/content/Context;)Landroid/net/LinkTurboMonitor;
    .locals 1

    new-instance v0, Landroid/net/LinkTurboMonitorImpl;

    invoke-direct {v0, p1}, Landroid/net/LinkTurboMonitorImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeModemStatusTracker(Landroid/content/Context;)Landroid/telephony/ModemStatusTracker;
    .locals 1

    new-instance v0, Landroid/telephony/ModemStatusTrackerImpl;

    invoke-direct {v0, p1}, Landroid/telephony/ModemStatusTrackerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeSprdSntpClient()Landroid/net/SprdSntpClient;
    .locals 1

    new-instance v0, Landroid/net/SprdSntpClientImpl;

    invoke-direct {v0}, Landroid/net/SprdSntpClientImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUniEventManager()Landroid/event/UniEventManager;
    .locals 1

    new-instance v0, Landroid/event/UniEventService;

    invoke-direct {v0}, Landroid/event/UniEventService;-><init>()V

    return-object v0
.end method

.method public blacklist makeUniFrameworkTelephonyManager()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;

    invoke-direct {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManagerImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUniPackageManagerUtils()Landroid/content/pm/UniPackageManagerUtils;
    .locals 1

    invoke-static {}, Landroid/content/pm/UniPackageManagerUtilsImpl;->getInstance()Landroid/content/pm/UniPackageManagerUtils;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeUniViewRootImplUtils()Landroid/view/UniViewRootImplUtils;
    .locals 1

    new-instance v0, Landroid/view/UniViewRootImplUtilsImpl;

    invoke-direct {v0}, Landroid/view/UniViewRootImplUtilsImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUniWifiNl80211Manager(Landroid/content/Context;)Landroid/net/wifi/nl80211/UniWifiNl80211Manager;
    .locals 1

    iget-object v0, p0, Landroid/util/UniFrameworkComponentFactoryImpl;->sUniWifiNl80211ManagerImpl:Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;

    invoke-direct {v0, p1}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/util/UniFrameworkComponentFactoryImpl;->sUniWifiNl80211ManagerImpl:Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;

    :cond_0
    iget-object v0, p0, Landroid/util/UniFrameworkComponentFactoryImpl;->sUniWifiNl80211ManagerImpl:Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;

    return-object v0
.end method

.method public blacklist makeUnisocApplicationErrorReport()Landroid/app/UnisocApplicationErrorReport;
    .locals 1

    new-instance v0, Landroid/app/UnisocApplicationErrorReportImpl;

    invoke-direct {v0}, Landroid/app/UnisocApplicationErrorReportImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUnisocBinderTracker()Landroid/os/DefaultBinderTracker;
    .locals 1

    invoke-static {}, Landroid/os/UnisocBinderTracker;->getInstance()Landroid/os/DefaultBinderTracker;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeUnisocChoreographer()Landroid/view/UnisocChoreographer;
    .locals 1

    new-instance v0, Landroid/view/UnisocChoreographerImpl;

    invoke-direct {v0}, Landroid/view/UnisocChoreographerImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUnisocDynamicDebugManager(Landroid/content/Context;)Landroid/app/UnisocDynamicDebugManager;
    .locals 1

    new-instance v0, Landroid/app/UnisocDynamicDebugManagerImpl;

    invoke-direct {v0, p1}, Landroid/app/UnisocDynamicDebugManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeUnisocLocationUtilsManager(Landroid/content/Context;)Landroid/location/UnisocLocationUtilsManager;
    .locals 1

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-direct {v0, p1}, Landroid/location/UnisocLocationUtilsManagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist makeUnisocMtpDatabase()Landroid/mtp/UnisocMtpDatabase;
    .locals 1

    invoke-static {}, Landroid/mtp/UnisocMtpDatabaseImpl;->getInstance()Landroid/mtp/UnisocMtpDatabaseImpl;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeUnisocSampleManager()Landroid/util/UnisocSampleManager;
    .locals 1

    new-instance v0, Landroid/util/UnisocSampleManager;

    invoke-direct {v0}, Landroid/util/UnisocSampleManager;-><init>()V

    return-object v0
.end method

.method public blacklist makeUnisocSaveBitmapToFile()Landroid/graphics/UnisocSaveBitmapToFile;
    .locals 1

    new-instance v0, Landroid/graphics/UnisocSaveBitmapToFileImpl;

    invoke-direct {v0}, Landroid/graphics/UnisocSaveBitmapToFileImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeUnisocSetBitmapFactoryDebug()Landroid/view/UnisocSetBitmapFactoryDebug;
    .locals 1

    new-instance v0, Landroid/view/UnisocSetBitmapFactoryDebugImpl;

    invoke-direct {v0}, Landroid/view/UnisocSetBitmapFactoryDebugImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeViewDebugConfig()Landroid/view/ViewDebugConfig;
    .locals 1

    new-instance v0, Landroid/view/UnisocViewDebugConfigImpl;

    invoke-direct {v0}, Landroid/view/UnisocViewDebugConfigImpl;-><init>()V

    return-object v0
.end method

.method public blacklist makeViewRootImpl(Landroid/content/Context;Landroid/view/Display;)Landroid/view/ViewRootImpl;
    .locals 1

    new-instance v0, Landroid/view/UnisocViewRootImpl;

    invoke-direct {v0, p1, p2}, Landroid/view/UnisocViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-object v0
.end method

.method public blacklist makeViewRootImpl(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowlessWindowLayout;)Landroid/view/ViewRootImpl;
    .locals 1

    new-instance v0, Landroid/view/UnisocViewRootImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/UnisocViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowlessWindowLayout;)V

    return-object v0
.end method

.method public blacklist makeWmTraceFileInterceptor(Ljava/io/File;)Landroid/util/WmTraceFileInterceptor;
    .locals 1

    new-instance v0, Landroid/util/WmTraceFileInterceptorImpl;

    invoke-direct {v0, p1}, Landroid/util/WmTraceFileInterceptorImpl;-><init>(Ljava/io/File;)V

    return-object v0
.end method

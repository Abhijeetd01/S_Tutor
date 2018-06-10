.class public final Lcom/google/android/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CRC32_BYTES_MSBF:[I = null

.field public static final DEVICE:Ljava/lang/String; = null

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String; = null

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final MANUFACTURER:Ljava/lang/String; = null

.field public static final MODEL:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final SDK_INT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    :goto_0
    sput v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    .line 75
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 81
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 96
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 1092
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    return-void

    .line 68
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0

    .line 1092
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xb7t 0x1dt 0xc1t 0x4t
        0x6et 0x3bt 0x82t 0x9t
        0xd9t 0x26t 0x43t 0xdt
        0xdct 0x76t 0x4t 0x13t
        0x6bt 0x6bt 0xc5t 0x17t
        0xb2t 0x4dt 0x86t 0x1at
        0x5t 0x50t 0x47t 0x1et
        0xb8t 0xedt 0x8t 0x26t
        0xft 0xf0t 0xc9t 0x22t
        0xd6t 0xd6t 0x8at 0x2ft
        0x61t 0xcbt 0x4bt 0x2bt
        0x64t 0x9bt 0xct 0x35t
        0xd3t 0x86t 0xcdt 0x31t
        0xat 0xa0t 0x8et 0x3ct
        0xbdt 0xbdt 0x4ft 0x38t
        0x70t 0xdbt 0x11t 0x4ct
        0xc7t 0xc6t 0xd0t 0x48t
        0x1et 0xe0t 0x93t 0x45t
        0xa9t 0xfdt 0x52t 0x41t
        0xact 0xadt 0x15t 0x5ft
        0x1bt 0xb0t 0xd4t 0x5bt
        0xc2t 0x96t 0x97t 0x56t
        0x75t 0x8bt 0x56t 0x52t
        0xc8t 0x36t 0x19t 0x6at
        0x7ft 0x2bt 0xd8t 0x6et
        0xa6t 0xdt 0x9bt 0x63t
        0x11t 0x10t 0x5at 0x67t
        0x14t 0x40t 0x1dt 0x79t
        0xa3t 0x5dt 0xdct 0x7dt
        0x7at 0x7bt 0x9ft 0x70t
        0xcdt 0x66t 0x5et 0x74t
        0xe0t 0xb6t 0x23t 0x98t
        0x57t 0xabt 0xe2t 0x9ct
        0x8et 0x8dt 0xa1t 0x91t
        0x39t 0x90t 0x60t 0x95t
        0x3ct 0xc0t 0x27t 0x8bt
        0x8bt 0xddt 0xe6t 0x8ft
        0x52t 0xfbt 0xa5t 0x82t
        0xe5t 0xe6t 0x64t 0x86t
        0x58t 0x5bt 0x2bt 0xbet
        0xeft 0x46t 0xeat 0xbat
        0x36t 0x60t 0xa9t 0xb7t
        0x81t 0x7dt 0x68t 0xb3t
        0x84t 0x2dt 0x2ft 0xadt
        0x33t 0x30t 0xeet 0xa9t
        0xeat 0x16t 0xadt 0xa4t
        0x5dt 0xbt 0x6ct 0xa0t
        0x90t 0x6dt 0x32t 0xd4t
        0x27t 0x70t 0xf3t 0xd0t
        0xfet 0x56t 0xb0t 0xddt
        0x49t 0x4bt 0x71t 0xd9t
        0x4ct 0x1bt 0x36t 0xc7t
        0xfbt 0x6t 0xf7t 0xc3t
        0x22t 0x20t 0xb4t 0xcet
        0x95t 0x3dt 0x75t 0xcat
        0x28t 0x80t 0x3at 0xf2t
        0x9ft 0x9dt 0xfbt 0xf6t
        0x46t 0xbbt 0xb8t 0xfbt
        0xf1t 0xa6t 0x79t 0xfft
        0xf4t 0xf6t 0x3et 0xe1t
        0x43t 0xebt 0xfft 0xe5t
        0x9at 0xcdt 0xbct 0xe8t
        0x2dt 0xd0t 0x7dt 0xect
        0x77t 0x70t 0x86t 0x34t
        0xc0t 0x6dt 0x47t 0x30t
        0x19t 0x4bt 0x4t 0x3dt
        0xaet 0x56t 0xc5t 0x39t
        0xabt 0x6t 0x82t 0x27t
        0x1ct 0x1bt 0x43t 0x23t
        0xc5t 0x3dt 0x0t 0x2et
        0x72t 0x20t 0xc1t 0x2at
        0xcft 0x9dt 0x8et 0x12t
        0x78t 0x80t 0x4ft 0x16t
        0xa1t 0xa6t 0xct 0x1bt
        0x16t 0xbbt 0xcdt 0x1ft
        0x13t 0xebt 0x8at 0x1t
        0xa4t 0xf6t 0x4bt 0x5t
        0x7dt 0xd0t 0x8t 0x8t
        0xcat 0xcdt 0xc9t 0xct
        0x7t 0xabt 0x97t 0x78t
        0xb0t 0xb6t 0x56t 0x7ct
        0x69t 0x90t 0x15t 0x71t
        0xdet 0x8dt 0xd4t 0x75t
        0xdbt 0xddt 0x93t 0x6bt
        0x6ct 0xc0t 0x52t 0x6ft
        0xb5t 0xe6t 0x11t 0x62t
        0x2t 0xfbt 0xd0t 0x66t
        0xbft 0x46t 0x9ft 0x5et
        0x8t 0x5bt 0x5et 0x5at
        0xd1t 0x7dt 0x1dt 0x57t
        0x66t 0x60t 0xdct 0x53t
        0x63t 0x30t 0x9bt 0x4dt
        0xd4t 0x2dt 0x5at 0x49t
        0xdt 0xbt 0x19t 0x44t
        0xbat 0x16t 0xd8t 0x40t
        0x97t 0xc6t 0xa5t 0xact
        0x20t 0xdbt 0x64t 0xa8t
        0xf9t 0xfdt 0x27t 0xa5t
        0x4et 0xe0t 0xe6t 0xa1t
        0x4bt 0xb0t 0xa1t 0xbft
        0xfct 0xadt 0x60t 0xbbt
        0x25t 0x8bt 0x23t 0xb6t
        0x92t 0x96t 0xe2t 0xb2t
        0x2ft 0x2bt 0xadt 0x8at
        0x98t 0x36t 0x6ct 0x8et
        0x41t 0x10t 0x2ft 0x83t
        0xf6t 0xdt 0xeet 0x87t
        0xf3t 0x5dt 0xa9t 0x99t
        0x44t 0x40t 0x68t 0x9dt
        0x9dt 0x66t 0x2bt 0x90t
        0x2at 0x7bt 0xeat 0x94t
        0xe7t 0x1dt 0xb4t 0xe0t
        0x50t 0x0t 0x75t 0xe4t
        0x89t 0x26t 0x36t 0xe9t
        0x3et 0x3bt 0xf7t 0xedt
        0x3bt 0x6bt 0xb0t 0xf3t
        0x8ct 0x76t 0x71t 0xf7t
        0x55t 0x50t 0x32t 0xfat
        0xe2t 0x4dt 0xf3t 0xfet
        0x5ft 0xf0t 0xbct 0xc6t
        0xe8t 0xedt 0x7dt 0xc2t
        0x31t 0xcbt 0x3et 0xcft
        0x86t 0xd6t 0xfft 0xcbt
        0x83t 0x86t 0xb8t 0xd5t
        0x34t 0x9bt 0x79t 0xd1t
        0xedt 0xbdt 0x3at 0xdct
        0x5at 0xa0t 0xfbt 0xd8t
        0xeet 0xe0t 0xct 0x69t
        0x59t 0xfdt 0xcdt 0x6dt
        0x80t 0xdbt 0x8et 0x60t
        0x37t 0xc6t 0x4ft 0x64t
        0x32t 0x96t 0x8t 0x7at
        0x85t 0x8bt 0xc9t 0x7et
        0x5ct 0xadt 0x8at 0x73t
        0xebt 0xb0t 0x4bt 0x77t
        0x56t 0xdt 0x4t 0x4ft
        0xe1t 0x10t 0xc5t 0x4bt
        0x38t 0x36t 0x86t 0x46t
        0x8ft 0x2bt 0x47t 0x42t
        0x8at 0x7bt 0x0t 0x5ct
        0x3dt 0x66t 0xc1t 0x58t
        0xe4t 0x40t 0x82t 0x55t
        0x53t 0x5dt 0x43t 0x51t
        0x9et 0x3bt 0x1dt 0x25t
        0x29t 0x26t 0xdct 0x21t
        0xf0t 0x0t 0x9ft 0x2ct
        0x47t 0x1dt 0x5et 0x28t
        0x42t 0x4dt 0x19t 0x36t
        0xf5t 0x50t 0xd8t 0x32t
        0x2ct 0x76t 0x9bt 0x3ft
        0x9bt 0x6bt 0x5at 0x3bt
        0x26t 0xd6t 0x15t 0x3t
        0x91t 0xcbt 0xd4t 0x7t
        0x48t 0xedt 0x97t 0xat
        0xfft 0xf0t 0x56t 0xet
        0xfat 0xa0t 0x11t 0x10t
        0x4dt 0xbdt 0xd0t 0x14t
        0x94t 0x9bt 0x93t 0x19t
        0x23t 0x86t 0x52t 0x1dt
        0xet 0x56t 0x2ft 0xf1t
        0xb9t 0x4bt 0xeet 0xf5t
        0x60t 0x6dt 0xadt 0xf8t
        0xd7t 0x70t 0x6ct 0xfct
        0xd2t 0x20t 0x2bt 0xe2t
        0x65t 0x3dt 0xeat 0xe6t
        0xbct 0x1bt 0xa9t 0xebt
        0xbt 0x6t 0x68t 0xeft
        0xb6t 0xbbt 0x27t 0xd7t
        0x1t 0xa6t 0xe6t 0xd3t
        0xd8t 0x80t 0xa5t 0xdet
        0x6ft 0x9dt 0x64t 0xdat
        0x6at 0xcdt 0x23t 0xc4t
        0xddt 0xd0t 0xe2t 0xc0t
        0x4t 0xf6t 0xa1t 0xcdt
        0xb3t 0xebt 0x60t 0xc9t
        0x7et 0x8dt 0x3et 0xbdt
        0xc9t 0x90t 0xfft 0xb9t
        0x10t 0xb6t 0xbct 0xb4t
        0xa7t 0xabt 0x7dt 0xb0t
        0xa2t 0xfbt 0x3at 0xaet
        0x15t 0xe6t 0xfbt 0xaat
        0xcct 0xc0t 0xb8t 0xa7t
        0x7bt 0xddt 0x79t 0xa3t
        0xc6t 0x60t 0x36t 0x9bt
        0x71t 0x7dt 0xf7t 0x9ft
        0xa8t 0x5bt 0xb4t 0x92t
        0x1ft 0x46t 0x75t 0x96t
        0x1at 0x16t 0x32t 0x88t
        0xadt 0xbt 0xf3t 0x8ct
        0x74t 0x2dt 0xb0t 0x81t
        0xc3t 0x30t 0x71t 0x85t
        0x99t 0x90t 0x8at 0x5dt
        0x2et 0x8dt 0x4bt 0x59t
        0xf7t 0xabt 0x8t 0x54t
        0x40t 0xb6t 0xc9t 0x50t
        0x45t 0xe6t 0x8et 0x4et
        0xf2t 0xfbt 0x4ft 0x4at
        0x2bt 0xddt 0xct 0x47t
        0x9ct 0xc0t 0xcdt 0x43t
        0x21t 0x7dt 0x82t 0x7bt
        0x96t 0x60t 0x43t 0x7ft
        0x4ft 0x46t 0x0t 0x72t
        0xf8t 0x5bt 0xc1t 0x76t
        0xfdt 0xbt 0x86t 0x68t
        0x4at 0x16t 0x47t 0x6ct
        0x93t 0x30t 0x4t 0x61t
        0x24t 0x2dt 0xc5t 0x65t
        0xe9t 0x4bt 0x9bt 0x11t
        0x5et 0x56t 0x5at 0x15t
        0x87t 0x70t 0x19t 0x18t
        0x30t 0x6dt 0xd8t 0x1ct
        0x35t 0x3dt 0x9ft 0x2t
        0x82t 0x20t 0x5et 0x6t
        0x5bt 0x6t 0x1dt 0xbt
        0xect 0x1bt 0xdct 0xft
        0x51t 0xa6t 0x93t 0x37t
        0xe6t 0xbbt 0x52t 0x33t
        0x3ft 0x9dt 0x11t 0x3et
        0x88t 0x80t 0xd0t 0x3at
        0x8dt 0xd0t 0x97t 0x24t
        0x3at 0xcdt 0x56t 0x20t
        0xe3t 0xebt 0x15t 0x2dt
        0x54t 0xf6t 0xd4t 0x29t
        0x79t 0x26t 0xa9t 0xc5t
        0xcet 0x3bt 0x68t 0xc1t
        0x17t 0x1dt 0x2bt 0xcct
        0xa0t 0x0t 0xeat 0xc8t
        0xa5t 0x50t 0xadt 0xd6t
        0x12t 0x4dt 0x6ct 0xd2t
        0xcbt 0x6bt 0x2ft 0xdft
        0x7ct 0x76t 0xeet 0xdbt
        0xc1t 0xcbt 0xa1t 0xe3t
        0x76t 0xd6t 0x60t 0xe7t
        0xaft 0xf0t 0x23t 0xeat
        0x18t 0xedt 0xe2t 0xeet
        0x1dt 0xbdt 0xa5t 0xf0t
        0xaat 0xa0t 0x64t 0xf4t
        0x73t 0x86t 0x27t 0xf9t
        0xc4t 0x9bt 0xe6t 0xfdt
        0x9t 0xfdt 0xb8t 0x89t
        0xbet 0xe0t 0x79t 0x8dt
        0x67t 0xc6t 0x3at 0x80t
        0xd0t 0xdbt 0xfbt 0x84t
        0xd5t 0x8bt 0xbct 0x9at
        0x62t 0x96t 0x7dt 0x9et
        0xbbt 0xb0t 0x3et 0x93t
        0xct 0xadt 0xfft 0x97t
        0xb1t 0x10t 0xb0t 0xaft
        0x6t 0xdt 0x71t 0xabt
        0xdft 0x2bt 0x32t 0xa6t
        0x68t 0x36t 0xf3t 0xa2t
        0x6dt 0x66t 0xb4t 0xbct
        0xdat 0x7bt 0x75t 0xb8t
        0x3t 0x5dt 0x36t 0xb5t
        0xb4t 0x40t 0xf7t 0xb1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 170
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 3
    .parameter
    .parameter
    .parameter "inclusive"
    .parameter "stayInBounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 465
    .local v0, index:I
    if-gez v0, :cond_2

    .line 466
    xor-int/lit8 v0, v0, -0x1

    .line 474
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 468
    .restart local v0       #index:I
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 469
    .local v1, listSize:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    :cond_4
    if-eqz p2, :cond_0

    .line 471
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 5
    .parameter "array"
    .parameter "value"
    .parameter "inclusive"
    .parameter "stayInBounds"

    .prologue
    .line 397
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 398
    .local v0, index:I
    if-gez v0, :cond_2

    .line 399
    xor-int/lit8 v0, v0, -0x1

    .line 406
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 401
    .restart local v0       #index:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 402
    :cond_3
    if-eqz p3, :cond_0

    .line 403
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 2
    .parameter
    .parameter
    .parameter "inclusive"
    .parameter "stayInBounds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Comparable",
            "<-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, list:Ljava/util/List;,"Ljava/util/List<+Ljava/lang/Comparable<-TT;>;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 431
    .local v0, index:I
    if-gez v0, :cond_2

    .line 432
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 439
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 434
    .restart local v0       #index:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    :cond_3
    if-eqz p2, :cond_0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 2
    .parameter "array"
    .parameter "value"
    .parameter "inclusive"
    .parameter "stayInBounds"

    .prologue
    .line 332
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 333
    .local v0, index:I
    if-gez v0, :cond_2

    .line 334
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 341
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 336
    .restart local v0       #index:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    aget v1, p0, v0

    if-eq v1, p1, :cond_2

    .line 337
    :cond_3
    if-eqz p2, :cond_0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 5
    .parameter "array"
    .parameter "value"
    .parameter "inclusive"
    .parameter "stayInBounds"

    .prologue
    .line 364
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 365
    .local v0, index:I
    if-gez v0, :cond_2

    .line 366
    add-int/lit8 v1, v0, 0x2

    neg-int v0, v1

    .line 373
    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v0           #index:I
    :cond_1
    return v0

    .line 368
    .restart local v0       #index:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 369
    :cond_3
    if-eqz p3, :cond_0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static ceilDivide(II)I
    .locals 1
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 286
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static ceilDivide(JJ)J
    .locals 4
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 297
    add-long v0, p0, p2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, p2

    return-wide v0
.end method

.method public static closeQuietly(Lcom/google/android/exoplayer2/upstream/DataSource;)V
    .locals 1
    .parameter "dataSource"

    .prologue
    .line 214
    if-eqz p0, :cond_0

    .line 215
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 230
    if-eqz p0, :cond_0

    .line 231
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static constrainValue(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 309
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "items"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 184
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 185
    .local v0, arrayItem:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const/4 v1, 0x1

    .line 189
    .end local v0           #arrayItem:Ljava/lang/Object;
    :cond_0
    return v1

    .line 184
    .restart local v0       #arrayItem:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static crc([BIII)I
    .locals 5
    .parameter "bytes"
    .parameter "start"
    .parameter "end"
    .parameter "initialValue"

    .prologue
    .line 991
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 992
    shl-int/lit8 v1, p3, 0x8

    sget-object v2, Lcom/google/android/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 v3, p3, 0x18

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    xor-int p3, v1, v2

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_0
    return p3
.end method

.method public static createTempDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "context"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 974
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 975
    .local v0, tempFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 976
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 977
    return-object v0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 863
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 864
    .local v5, length:I
    const/4 v2, 0x0

    .line 865
    .local v2, charactersToEscapeCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 866
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 867
    add-int/lit8 v2, v2, 0x1

    .line 865
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    :cond_1
    if-nez v2, :cond_2

    .line 888
    .end local p0
    :goto_1
    return-object p0

    .line 874
    .restart local p0
    :cond_2
    const/4 v3, 0x0

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, builder:Ljava/lang/StringBuilder;
    move v4, v3

    .line 876
    .end local v3           #i:I
    .local v4, i:I
    :goto_2
    if-lez v2, :cond_4

    .line 877
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 878
    .local v1, c:C
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 879
    const/16 v6, 0x25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    add-int/lit8 v2, v2, -0x1

    :goto_3
    move v4, v3

    .line 884
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_2

    .line 882
    .end local v4           #i:I
    .restart local v3       #i:I
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 885
    .end local v1           #c:C
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_4
    if-ge v4, v5, :cond_5

    .line 886
    invoke-virtual {v0, p0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 888
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 6
    .parameter "hexString"

    .prologue
    const/16 v5, 0x10

    .line 700
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 701
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 702
    mul-int/lit8 v2, v1, 0x2

    .line 703
    .local v2, stringOffset:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    .line 704
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 701
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v2           #stringOffset:I
    :cond_0
    return-object v0
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "objects"

    .prologue
    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 717
    .local v1, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 718
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 720
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDefaultBufferSize(I)I
    .locals 1
    .parameter "trackType"

    .prologue
    const/high16 v0, 0x2

    .line 834
    packed-switch p0, :pswitch_data_0

    .line 846
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 836
    :pswitch_0
    const/high16 v0, 0x100

    .line 844
    :goto_0
    :pswitch_1
    return v0

    .line 838
    :pswitch_2
    const/high16 v0, 0x36

    goto :goto_0

    .line 840
    :pswitch_3
    const/high16 v0, 0xc8

    goto :goto_0

    .line 834
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .parameter "display"
    .parameter "outSize"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1079
    invoke-virtual {p0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1080
    return-void
.end method

.method private static getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0
    .parameter "display"
    .parameter "outSize"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1074
    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1075
    return-void
.end method

.method private static getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 2
    .parameter "display"
    .parameter "outSize"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1067
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 1068
    .local v0, mode:Landroid/view/Display$Mode;
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 1069
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 1070
    return-void
.end method

.method private static getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1
    .parameter "display"
    .parameter "outSize"

    .prologue
    .line 1084
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 1085
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 1086
    return-void
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4
    .parameter "string"

    .prologue
    .line 683
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 684
    .local v1, length:I
    const/4 v3, 0x4

    if-gt v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, result:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 687
    shl-int/lit8 v2, v2, 0x8

    .line 688
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    .line 686
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 684
    .end local v0           #i:I
    .end local v2           #result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 690
    .restart local v0       #i:I
    .restart local v2       #result:I
    :cond_1
    return v2
.end method

.method public static getPcmEncoding(I)I
    .locals 1
    .parameter "bitDepth"

    .prologue
    .line 757
    sparse-switch p0, :sswitch_data_0

    .line 767
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 759
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 761
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 763
    :sswitch_2
    const/high16 v0, -0x8000

    goto :goto_0

    .line 765
    :sswitch_3
    const/high16 v0, 0x4000

    goto :goto_0

    .line 757
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 1
    .parameter "pcmEncoding"
    .parameter "channelCount"

    .prologue
    .line 779
    sparse-switch p0, :sswitch_data_0

    .line 789
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 783
    :sswitch_0
    mul-int/lit8 p1, p1, 0x2

    .line 787
    .end local p1
    :goto_0
    :sswitch_1
    return p1

    .line 785
    .restart local p1
    :sswitch_2
    mul-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 787
    :sswitch_3
    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 779
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2
    .parameter "context"

    .prologue
    .line 1005
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1006
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public static getPhysicalDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/graphics/Point;
    .locals 13
    .parameter "context"
    .parameter "display"

    .prologue
    .line 1017
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x19

    if-ge v9, v10, :cond_2

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    if-nez v9, :cond_2

    .line 1020
    const-string v9, "Sony"

    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v10, "BRAVIA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1022
    new-instance v1, Landroid/graphics/Point;

    const/16 v9, 0xf00

    const/16 v10, 0x870

    invoke-direct {v1, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 1062
    :goto_0
    return-object v1

    .line 1023
    :cond_0
    const-string v9, "NVIDIA"

    sget-object v10, Lcom/google/android/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/google/android/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v10, "SHIELD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1025
    const/4 v5, 0x0

    .line 1027
    .local v5, sysDisplaySize:Ljava/lang/String;
    :try_start_0
    const-string v9, "android.os.SystemProperties"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 1028
    .local v7, systemProperties:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v9, "get"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1029
    .local v3, getMethod:Ljava/lang/reflect/Method;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "sys.display-size"

    aput-object v11, v9, v10

    invoke-virtual {v3, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1034
    .end local v3           #getMethod:Ljava/lang/reflect/Method;
    .end local v7           #systemProperties:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1036
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1037
    .local v6, sysDisplaySizeParts:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1038
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1039
    .local v8, width:I
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1040
    .local v4, height:I
    if-lez v8, :cond_1

    if-lez v4, :cond_1

    .line 1041
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v8, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1044
    .end local v4           #height:I
    .end local v6           #sysDisplaySizeParts:[Ljava/lang/String;
    .end local v8           #width:I
    :catch_0
    move-exception v9

    .line 1047
    :cond_1
    const-string v9, "Util"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid sys.display-size: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .end local v5           #sysDisplaySize:Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1053
    .local v1, displaySize:Landroid/graphics/Point;
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_3

    .line 1054
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV23(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1030
    .end local v1           #displaySize:Landroid/graphics/Point;
    .restart local v5       #sysDisplaySize:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1031
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "Util"

    const-string v10, "Failed to read sys.display-size"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1055
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #sysDisplaySize:Ljava/lang/String;
    .restart local v1       #displaySize:Landroid/graphics/Point;
    :cond_3
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_4

    .line 1056
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV17(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1057
    :cond_4
    sget v9, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_5

    .line 1058
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV16(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0

    .line 1060
    :cond_5
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/Util;->getDisplaySizeV9(Landroid/view/Display;Landroid/graphics/Point;)V

    goto/16 :goto_0
.end method

.method public static getRemainderDataSpec(Lcom/google/android/exoplayer2/upstream/DataSpec;I)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 8
    .parameter "dataSpec"
    .parameter "bytesLoaded"

    .prologue
    const-wide/16 v4, -0x1

    .line 666
    if-nez p1, :cond_0

    .line 671
    .end local p0
    :goto_0
    return-object p0

    .line 669
    .restart local p0
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 671
    .local v4, remainingLength:J
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    int-to-long v6, p1

    add-long/2addr v2, v6

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->key:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->flags:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object p0, v0

    goto :goto_0

    .line 669
    .end local v4           #remainingLength:J
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    int-to-long v2, p1

    sub-long v4, v0, v2

    goto :goto_1
.end method

.method public static getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "applicationName"

    .prologue
    .line 736
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 737
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 738
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #packageName:Ljava/lang/String;
    .local v3, versionName:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (Linux;Android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ExoPlayerLib/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2.3.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 739
    .end local v3           #versionName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 740
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "?"

    .restart local v3       #versionName:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "value"

    .prologue
    .line 255
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static inferContentType(Landroid/net/Uri;)I
    .locals 2
    .parameter "uri"

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 813
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 814
    const-string v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 822
    :goto_0
    return v0

    .line 816
    :cond_0
    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 817
    const/4 v0, 0x2

    goto :goto_0

    .line 818
    :cond_1
    const-string v0, ".ism"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".isml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".ism/manifest"

    .line 819
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".isml/manifest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 820
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 822
    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static isLinebreak(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 265
    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalFileUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, scheme:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Landroid/app/Activity;[Landroid/net/Uri;)Z
    .locals 6
    .parameter "activity"
    .parameter "uris"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    sget v3, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    array-length v4, p1

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 139
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v1

    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    move v1, v2

    .line 143
    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "threadName"

    .prologue
    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/util/Util$1;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "language"

    .prologue
    .line 245
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 14
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x9

    const/16 v13, 0x8

    const/4 v12, 0x3

    .line 517
    sget-object v1, Lcom/google/android/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 518
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date/time format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 523
    :cond_0
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 525
    const/4 v9, 0x0

    .line 536
    .local v9, timezoneShift:I
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 538
    .local v0, dateTime:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 540
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 541
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 542
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x4

    .line 543
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    .line 544
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    .line 545
    invoke-virtual {v8, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 540
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 546
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 547
    new-instance v7, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 549
    .local v7, bd:Ljava/math/BigDecimal;
    const/16 v1, 0xe

    invoke-virtual {v7, v12}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 552
    .end local v7           #bd:Ljava/math/BigDecimal;
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 553
    .local v10, time:J
    if-eqz v9, :cond_3

    .line 554
    const v1, 0xea60

    mul-int/2addr v1, v9

    int-to-long v2, v1

    sub-long/2addr v10, v2

    .line 557
    :cond_3
    return-wide v10

    .line 526
    .end local v0           #dateTime:Ljava/util/Calendar;
    .end local v9           #timezoneShift:I
    .end local v10           #time:J
    :cond_4
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 527
    const/4 v9, 0x0

    .restart local v9       #timezoneShift:I
    goto/16 :goto_0

    .line 529
    .end local v9           #timezoneShift:I
    :cond_5
    const/16 v1, 0xc

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    const/16 v2, 0xd

    .line 530
    invoke-virtual {v8, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int v9, v1, v2

    .line 531
    .restart local v9       #timezoneShift:I
    const/16 v1, 0xb

    invoke-virtual {v8, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    mul-int/lit8 v9, v9, -0x1

    goto/16 :goto_0
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 18
    .parameter "value"

    .prologue
    .line 484
    sget-object v14, Lcom/google/android/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 485
    .local v8, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 486
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v11, 0x1

    .line 489
    .local v11, negated:Z
    :goto_0
    const/4 v14, 0x3

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 490
    .local v13, years:Ljava/lang/String;
    if-eqz v13, :cond_2

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x417e1852c0000000L

    mul-double v6, v14, v16

    .line 491
    .local v6, durationSeconds:D
    :goto_1
    const/4 v14, 0x5

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 492
    .local v10, months:Ljava/lang/String;
    if-eqz v10, :cond_3

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x4144103580000000L

    mul-double v14, v14, v16

    :goto_2
    add-double/2addr v6, v14

    .line 493
    const/4 v14, 0x7

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, days:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40f5180000000000L

    mul-double v14, v14, v16

    :goto_3
    add-double/2addr v6, v14

    .line 495
    const/16 v14, 0xa

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, hours:Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L

    mul-double v14, v14, v16

    :goto_4
    add-double/2addr v6, v14

    .line 497
    const/16 v14, 0xc

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 498
    .local v9, minutes:Ljava/lang/String;
    if-eqz v9, :cond_6

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    :goto_5
    add-double/2addr v6, v14

    .line 499
    const/16 v14, 0xe

    invoke-virtual {v8, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, seconds:Ljava/lang/String;
    if-eqz v12, :cond_7

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    :goto_6
    add-double/2addr v6, v14

    .line 501
    const-wide v14, 0x408f400000000000L

    mul-double/2addr v14, v6

    double-to-long v4, v14

    .line 502
    .local v4, durationMillis:J
    if-eqz v11, :cond_0

    neg-long v4, v4

    .line 504
    .end local v2           #days:Ljava/lang/String;
    .end local v3           #hours:Ljava/lang/String;
    .end local v4           #durationMillis:J
    .end local v6           #durationSeconds:D
    .end local v9           #minutes:Ljava/lang/String;
    .end local v10           #months:Ljava/lang/String;
    .end local v11           #negated:Z
    .end local v12           #seconds:Ljava/lang/String;
    .end local v13           #years:Ljava/lang/String;
    :cond_0
    :goto_7
    return-wide v4

    .line 486
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 490
    .restart local v11       #negated:Z
    .restart local v13       #years:Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 492
    .restart local v6       #durationSeconds:D
    .restart local v10       #months:Ljava/lang/String;
    :cond_3
    const-wide/16 v14, 0x0

    goto :goto_2

    .line 494
    .restart local v2       #days:Ljava/lang/String;
    :cond_4
    const-wide/16 v14, 0x0

    goto :goto_3

    .line 496
    .restart local v3       #hours:Ljava/lang/String;
    :cond_5
    const-wide/16 v14, 0x0

    goto :goto_4

    .line 498
    .restart local v9       #minutes:Ljava/lang/String;
    :cond_6
    const-wide/16 v14, 0x0

    goto :goto_5

    .line 500
    .restart local v12       #seconds:Ljava/lang/String;
    :cond_7
    const-wide/16 v14, 0x0

    goto :goto_6

    .line 504
    .end local v2           #days:Ljava/lang/String;
    .end local v3           #hours:Ljava/lang/String;
    .end local v6           #durationSeconds:D
    .end local v9           #minutes:Ljava/lang/String;
    .end local v10           #months:Ljava/lang/String;
    .end local v11           #negated:Z
    .end local v12           #seconds:Ljava/lang/String;
    .end local v13           #years:Ljava/lang/String;
    :cond_8
    invoke-static/range {p0 .. p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    const-wide v16, 0x40ac200000000000L

    mul-double v14, v14, v16

    const-wide v16, 0x408f400000000000L

    mul-double v14, v14, v16

    double-to-long v4, v14

    goto :goto_7
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4
    .parameter "fileOrDirectory"

    .prologue
    .line 964
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 966
    .local v0, child:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 965
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 969
    .end local v0           #child:Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 970
    return-void
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 8
    .parameter "timestamp"
    .parameter "multiplier"
    .parameter "divisor"

    .prologue
    const-wide/16 v6, 0x0

    .line 572
    cmp-long v4, p4, p2

    if-ltz v4, :cond_0

    rem-long v4, p4, p2

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 573
    div-long v0, p4, p2

    .line 574
    .local v0, divisionFactor:J
    div-long v4, p0, v0

    .line 580
    .end local v0           #divisionFactor:J
    :goto_0
    return-wide v4

    .line 575
    :cond_0
    cmp-long v4, p4, p2

    if-gez v4, :cond_1

    rem-long v4, p2, p4

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 576
    div-long v2, p2, p4

    .line 577
    .local v2, multiplicationFactor:J
    mul-long v4, p0, v2

    goto :goto_0

    .line 579
    .end local v2           #multiplicationFactor:J
    :cond_1
    long-to-double v4, p2

    long-to-double v6, p4

    div-double v2, v4, v6

    .line 580
    .local v2, multiplicationFactor:D
    long-to-double v4, p0

    mul-double/2addr v4, v2

    double-to-long v4, v4

    goto :goto_0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 11
    .parameter
    .parameter "multiplier"
    .parameter "divisor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .prologue
    .local p0, timestamps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 593
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [J

    .line 594
    .local v3, scaledTimestamps:[J
    cmp-long v6, p3, p1

    if-ltz v6, :cond_0

    rem-long v6, p3, p1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 595
    div-long v0, p3, p1

    .line 596
    .local v0, divisionFactor:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 597
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v0

    aput-wide v6, v3, v2

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v0           #divisionFactor:J
    .end local v2           #i:I
    :cond_0
    cmp-long v6, p3, p1

    if-gez v6, :cond_1

    rem-long v6, p1, p3

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 600
    div-long v4, p1, p3

    .line 601
    .local v4, multiplicationFactor:J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 602
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v6, v4

    aput-wide v6, v3, v2

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 605
    .end local v2           #i:I
    .end local v4           #multiplicationFactor:J
    :cond_1
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 606
    .local v4, multiplicationFactor:D
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_2

    .line 607
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, v3, v2

    .line 606
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 610
    .end local v4           #multiplicationFactor:D
    :cond_2
    return-object v3
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 11
    .parameter "timestamps"
    .parameter "multiplier"
    .parameter "divisor"

    .prologue
    const-wide/16 v8, 0x0

    .line 621
    cmp-long v3, p3, p1

    if-ltz v3, :cond_0

    rem-long v6, p3, p1

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 622
    div-long v0, p3, p1

    .line 623
    .local v0, divisionFactor:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 624
    aget-wide v6, p0, v2

    div-long/2addr v6, v0

    aput-wide v6, p0, v2

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 626
    .end local v0           #divisionFactor:J
    .end local v2           #i:I
    :cond_0
    cmp-long v3, p3, p1

    if-gez v3, :cond_1

    rem-long v6, p1, p3

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 627
    div-long v4, p1, p3

    .line 628
    .local v4, multiplicationFactor:J
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 629
    aget-wide v6, p0, v2

    mul-long/2addr v6, v4

    aput-wide v6, p0, v2

    .line 628
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 632
    .end local v2           #i:I
    .end local v4           #multiplicationFactor:J
    :cond_1
    long-to-double v6, p1

    long-to-double v8, p3

    div-double v4, v6, v8

    .line 633
    .local v4, multiplicationFactor:D
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 634
    aget-wide v6, p0, v2

    long-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-long v6, v6

    aput-wide v6, p0, v2

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 637
    .end local v4           #multiplicationFactor:D
    :cond_2
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 892
    sparse-switch p0, :sswitch_data_0

    .line 905
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 903
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 954
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 955
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "t"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 959
    throw p0
.end method

.method public static toArray(Ljava/util/List;)[I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 647
    const/4 v1, 0x0

    .line 654
    :cond_0
    return-object v1

    .line 649
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 650
    .local v2, length:I
    new-array v1, v2, [I

    .line 651
    .local v1, intArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 652
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 117
    .local v0, buffer:[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 119
    .local v2, outputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, bytesRead:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 120
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 275
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "fileName"

    .prologue
    .line 919
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 920
    .local v4, length:I
    const/4 v6, 0x0

    .line 921
    .local v6, percentCharacterCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 922
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_0

    .line 923
    add-int/lit8 v6, v6, 0x1

    .line 921
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 926
    :cond_1
    if-nez v6, :cond_2

    .line 946
    .end local p0
    :goto_1
    return-object p0

    .line 930
    .restart local p0
    :cond_2
    mul-int/lit8 v8, v6, 0x2

    sub-int v2, v4, v8

    .line 931
    .local v2, expectedLength:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 932
    .local v0, builder:Ljava/lang/StringBuilder;
    sget-object v8, Lcom/google/android/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 933
    .local v5, matcher:Ljava/util/regex/Matcher;
    const/4 v1, 0x0

    .line 934
    .local v1, endOfLastMatch:I
    :goto_2
    if-lez v6, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 935
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v7, v8

    .line 936
    .local v7, unescapedCharacter:C
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v0, p0, v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 938
    add-int/lit8 v6, v6, -0x1

    .line 939
    goto :goto_2

    .line 940
    .end local v7           #unescapedCharacter:C
    :cond_3
    if-ge v1, v4, :cond_4

    .line 941
    invoke-virtual {v0, p0, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 943
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eq v8, v2, :cond_5

    .line 944
    const/4 p0, 0x0

    goto :goto_1

    .line 946
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

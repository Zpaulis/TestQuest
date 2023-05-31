; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 76
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 14
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 28
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 64
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 96
	i64 316157742385208084, ; 5: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 69
	i64 322890146361922204, ; 6: Xamarin.Android.Support.Exif => 0x47b22e09b60529c => 54
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 86
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 122
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 143
	i64 870603111519317375, ; 10: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 33
	i64 872800313462103108, ; 11: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 75
	i64 940822596282819491, ; 12: System.Transactions => 0xd0e792aa81923a3 => 149
	i64 1000557547492888992, ; 13: Mono.Security.dll => 0xde2b1c9cba651a0 => 155
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1155807931551632357, ; 15: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0x100a4130a4b6cbe5 => 132
	i64 1274338068859211160, ; 16: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 126
	i64 1301485588176585670, ; 17: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 32
	i64 1315114680217950157, ; 18: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 60
	i64 1368633735297491523, ; 19: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 112
	i64 1392315331768750440, ; 20: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 109
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 147
	i64 1465843056802068477, ; 22: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 111
	i64 1474586420366808421, ; 23: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 125
	i64 1518315023656898250, ; 24: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 34
	i64 1624659445732251991, ; 25: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 58
	i64 1628611045998245443, ; 26: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 88
	i64 1636321030536304333, ; 27: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 82
	i64 1672383392659050004, ; 28: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 25
	i64 1731380447121279447, ; 29: Newtonsoft.Json => 0x18071957e9b889d7 => 30
	i64 1743969030606105336, ; 30: System.Memory.dll => 0x1833d297e88f2af8 => 46
	i64 1769105627832031750, ; 31: Google.Protobuf => 0x188d203205129a06 => 16
	i64 1795316252682057001, ; 32: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 59
	i64 1836611346387731153, ; 33: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 96
	i64 1865037103900624886, ; 34: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 24
	i64 1875917498431009007, ; 35: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 56
	i64 1956817255800234857, ; 36: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 125
	i64 1981742497975770890, ; 37: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 87
	i64 1990714127648872464, ; 38: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 128
	i64 2064708342624596306, ; 39: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 137
	i64 2133195048986300728, ; 40: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 30
	i64 2136356949452311481, ; 41: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 91
	i64 2165725771938924357, ; 42: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 62
	i64 2189479245026779307, ; 43: Square.Picasso.dll => 0x1e6297c5e2e960ab => 38
	i64 2262844636196693701, ; 44: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 75
	i64 2284400282711631002, ; 45: System.Web.Services => 0x1fb3d1f42fd4249a => 150
	i64 2304837677853103545, ; 46: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 95
	i64 2329709569556905518, ; 47: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 84
	i64 2337758774805907496, ; 48: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 50
	i64 2343783402604882194, ; 49: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 131
	i64 2445261912722553526, ; 50: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 12
	i64 2470498323731680442, ; 51: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 68
	i64 2479423007379663237, ; 52: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 100
	i64 2497223385847772520, ; 53: System.Runtime => 0x22a7eb7046413568 => 51
	i64 2547086958574651984, ; 54: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 55
	i64 2592350477072141967, ; 55: System.Xml.dll => 0x23f9e10627330e8f => 52
	i64 2624866290265602282, ; 56: mscorlib.dll => 0x246d65fbde2db8ea => 29
	i64 2783046991838674048, ; 57: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 50
	i64 2787234703088983483, ; 58: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 97
	i64 2812926542227278819, ; 59: Google.Apis.Core.dll => 0x270985c960b98be3 => 10
	i64 2923871038697555247, ; 60: Jsr305Binding => 0x2893ad37e69ec52f => 23
	i64 2951672403965468947, ; 61: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 112
	i64 3017704767998173186, ; 62: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3070901203286954241, ; 63: Square.OkIO.JVM => 0x2a9e085fc23d1101 => 37
	i64 3171992396844006720, ; 64: Square.OkIO => 0x2c052e476c207d40 => 36
	i64 3289520064315143713, ; 65: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 83
	i64 3303437397778967116, ; 66: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 57
	i64 3311221304742556517, ; 67: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 49
	i64 3344514922410554693, ; 68: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 140
	i64 3364695309916733813, ; 69: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 110
	i64 3411255996856937470, ; 70: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 123
	i64 3430216265859992823, ; 71: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 18
	i64 3493805808809882663, ; 72: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 98
	i64 3531994851595924923, ; 73: System.Numerics => 0x31042a9aade235bb => 48
	i64 3571415421602489686, ; 74: System.Runtime.dll => 0x319037675df7e556 => 51
	i64 3716579019761409177, ; 75: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 76: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 94
	i64 3772598417116884899, ; 77: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 76
	i64 3893087497687830326, ; 78: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 13
	i64 3966267475168208030, ; 79: System.Memory => 0x370b03412596249e => 46
	i64 4045730230152541805, ; 80: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 130
	i64 4056584864658557221, ; 81: Google.Apis.Auth => 0x384be27113330925 => 8
	i64 4201423742386704971, ; 82: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 69
	i64 4247996603072512073, ; 83: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 124
	i64 4337444564132831293, ; 84: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 31
	i64 4525561845656915374, ; 85: System.ServiceModel.Internals => 0x3ece06856b710dae => 148
	i64 4578348326057651078, ; 86: TestQuest.dll => 0x3f898f8ba0abab86 => 0
	i64 4636684751163556186, ; 87: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 102
	i64 4702770163853758138, ; 88: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 111
	i64 4708653840312162517, ; 89: Square.OkHttp3 => 0x41587fb86215d8d5 => 35
	i64 4759461199762736555, ; 90: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 85
	i64 4794310189461587505, ; 91: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 55
	i64 5098983611934048327, ; 92: Google.Cloud.Location => 0x46c33a9458de0047 => 14
	i64 5129462924058778861, ; 93: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 25
	i64 5203618020066742981, ; 94: Xamarin.Essentials => 0x4836f704f0e652c5 => 106
	i64 5205316157927637098, ; 95: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 90
	i64 5290215063822704973, ; 96: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 131
	i64 5376510917114486089, ; 97: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 100
	i64 5408338804355907810, ; 98: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 99
	i64 5446034149219586269, ; 99: System.Diagnostics.Debug => 0x4b94333452e150dd => 4
	i64 5451019430259338467, ; 100: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 67
	i64 5507995362134886206, ; 101: System.Core.dll => 0x4c705499688c873e => 41
	i64 5665389054145784248, ; 102: Google.Apis.Core => 0x4e9f815406bee9b8 => 10
	i64 5692067934154308417, ; 103: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 104
	i64 5724799082821825042, ; 104: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 79
	i64 5757522595884336624, ; 105: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 65
	i64 5767696078500135884, ; 106: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 53
	i64 6118452257458269359, ; 107: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 108
	i64 6135981624229292808, ; 108: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 126
	i64 6183170893902868313, ; 109: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 31
	i64 6319713645133255417, ; 110: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 86
	i64 6401242110442382339, ; 111: Xamarin.Protobuf.JavaLite => 0x58d5c7c8c230a403 => 141
	i64 6401687960814735282, ; 112: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 84
	i64 6504860066809920875, ; 113: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 62
	i64 6548213210057960872, ; 114: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 72
	i64 6589202984700901502, ; 115: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 117
	i64 6591024623626361694, ; 116: System.Web.Services.dll => 0x5b7805f9751a1b5e => 150
	i64 6876862101832370452, ; 117: System.Xml.Linq => 0x5f6f85a57d108914 => 151
	i64 6894844156784520562, ; 118: System.Numerics.Vectors => 0x5faf683aead1ad72 => 49
	i64 6941080589610463230, ; 119: Google.Apis.Auth.PlatformServices => 0x6053ac0555172ffe => 9
	i64 6975328107116786489, ; 120: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 107
	i64 7103753931438454322, ; 121: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 81
	i64 7338192458477945005, ; 122: System.Reflection => 0x65d67f295d0740ad => 153
	i64 7488575175965059935, ; 123: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 151
	i64 7621211152690795761, ; 124: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 15
	i64 7637365915383206639, ; 125: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 106
	i64 7654504624184590948, ; 126: System.Net.Http => 0x6a3a4366801b8264 => 47
	i64 7735352534559001595, ; 127: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 136
	i64 7740912860115050295, ; 128: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 5
	i64 7820441508502274321, ; 129: System.Data => 0x6c87ca1e14ff8111 => 42
	i64 7836164640616011524, ; 130: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 58
	i64 7843473411302439824, ; 131: Google.LongRunning => 0x6cd99d82d5e73b90 => 15
	i64 7991572870742010042, ; 132: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 114
	i64 8003335089973143038, ; 133: Square.OkHttp3.dll => 0x6f118edc6044a5fe => 35
	i64 8044118961405839122, ; 134: System.ComponentModel.Composition => 0x6fa2739369944712 => 146
	i64 8064050204834738623, ; 135: System.Collections.dll => 0x6fe942efa61731bf => 2
	i64 8083354569033831015, ; 136: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 83
	i64 8087206902342787202, ; 137: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 43
	i64 8101777744205214367, ; 138: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 53
	i64 8103644804370223335, ; 139: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 142
	i64 8167236081217502503, ; 140: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 22
	i64 8185542183669246576, ; 141: System.Collections => 0x7198e33f4794aa70 => 2
	i64 8187640529827139739, ; 142: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 139
	i64 8290740647658429042, ; 143: System.Runtime.Extensions => 0x730ea0b15c929a72 => 154
	i64 8293702073711834350, ; 144: System.Linq.Async => 0x731926181883b4ee => 45
	i64 8398329775253868912, ; 145: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 66
	i64 8426919725312979251, ; 146: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 85
	i64 8450804802111199978, ; 147: Xamarin.Android.Support.Exif.dll => 0x75474a317800daea => 54
	i64 8518412311883997971, ; 148: System.Collections.Immutable => 0x76377add7c28e313 => 40
	i64 8598790081731763592, ; 149: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 78
	i64 8601935802264776013, ; 150: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 99
	i64 8609060182490045521, ; 151: Square.OkIO.dll => 0x7779869f8b475c51 => 36
	i64 8613760304861496997, ; 152: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x778a395c0fa146a5 => 105
	i64 8626175481042262068, ; 153: Java.Interop => 0x77b654e585b55834 => 22
	i64 8684531736582871431, ; 154: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 145
	i64 8685687024490312494, ; 155: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 7
	i64 8725526185868997716, ; 156: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 43
	i64 8853378295825400934, ; 157: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 135
	i64 8951477988056063522, ; 158: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 93
	i64 9312692141327339315, ; 159: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 104
	i64 9324707631942237306, ; 160: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 59
	i64 9404599086328396064, ; 161: Grpc.Net.Client.dll => 0x8283d90a93913920 => 20
	i64 9662334977499516867, ; 162: System.Numerics.dll => 0x8617827802b0cfc3 => 48
	i64 9678050649315576968, ; 163: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 68
	i64 9808709177481450983, ; 164: Mono.Android.dll => 0x881f890734e555e7 => 28
	i64 9825649861376906464, ; 165: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 65
	i64 9834056768316610435, ; 166: System.Transactions.dll => 0x8879968718899783 => 149
	i64 9875200773399460291, ; 167: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 122
	i64 9880217525690912228, ; 168: Xamarin.Firebase.Database.dll => 0x891d957df2654de4 => 113
	i64 9907349773706910547, ; 169: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 78
	i64 9998632235833408227, ; 170: Mono.Security => 0x8ac2470b209ebae3 => 155
	i64 10038780035334861115, ; 171: System.Net.Http.dll => 0x8b50e941206af13b => 47
	i64 10051920404523413229, ; 172: Grpc.Net.Common => 0x8b7f9859be1e6eed => 21
	i64 10071983904436292605, ; 173: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x8bc6dfff57608bfd => 105
	i64 10167561595017141208, ; 174: Xamarin.GoogleAndroid.Annotations.dll => 0x8d1a6f668ee69bd8 => 121
	i64 10218821437939648382, ; 175: Google.Apis.Auth.PlatformServices.dll => 0x8dd08bf4c78a077e => 9
	i64 10226222362177979215, ; 176: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 137
	i64 10229024438826829339, ; 177: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 72
	i64 10282208442277544177, ; 178: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 13
	i64 10321854143672141184, ; 179: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 134
	i64 10376576884623852283, ; 180: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 98
	i64 10406448008575299332, ; 181: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 140
	i64 10430153318873392755, ; 182: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 70
	i64 10447083246144586668, ; 183: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 24
	i64 10714184849103829812, ; 184: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 154
	i64 10798320213170575484, ; 185: Xamarin.Firebase.Database => 0x95db57059cf3d87c => 113
	i64 10823124638835005028, ; 186: Google.Api.Gax.dll => 0x963376840189d664 => 6
	i64 10847732767863316357, ; 187: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 60
	i64 10854473764158213966, ; 188: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 19
	i64 10857315922431607327, ; 189: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 115
	i64 10953751836886437922, ; 190: System.Linq.Async.dll => 0x98038b429b661022 => 45
	i64 10964653383833615866, ; 191: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 152
	i64 10966933586012635777, ; 192: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 129
	i64 11002576679268595294, ; 193: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 27
	i64 11023048688141570732, ; 194: System.Core => 0x98f9bc61168392ac => 41
	i64 11037814507248023548, ; 195: System.Xml => 0x992e31d0412bf7fc => 52
	i64 11071824625609515081, ; 196: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 117
	i64 11072526564452562534, ; 197: Square.OkIO.JVM.dll => 0x99a9843ee0457666 => 37
	i64 11136029745144976707, ; 198: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 23
	i64 11162124722117608902, ; 199: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 103
	i64 11326322297822330275, ; 200: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 12
	i64 11340910727871153756, ; 201: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 71
	i64 11361951459766490322, ; 202: Xamarin.GoogleAndroid.Annotations => 0x9dadc2a78a9cd4d2 => 121
	i64 11376351552967644903, ; 203: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 107
	i64 11392833485892708388, ; 204: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 92
	i64 11435314654401632883, ; 205: Grpc.Core.Api => 0x9eb266175e6d9a73 => 19
	i64 11441445377436144712, ; 206: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 21
	i64 11496466075493495264, ; 207: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 127
	i64 11529969570048099689, ; 208: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 103
	i64 11543207250219725293, ; 209: Grpc.Net.Client => 0xa031b5d5e60f71ed => 20
	i64 11543422055205009205, ; 210: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 114
	i64 11580057168383206117, ; 211: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 56
	i64 11591352189662810718, ; 212: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 97
	i64 11597940890313164233, ; 213: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 214: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 81
	i64 11864794479965678424, ; 215: Xamarin.Protobuf.JavaLite.dll => 0xa4a837b7975eab58 => 141
	i64 12021485101958451063, ; 216: TestQuest => 0xa6d4e501f6e24f77 => 0
	i64 12102847907131387746, ; 217: System.Buffers => 0xa7f5f40c43256f62 => 39
	i64 12137774235383566651, ; 218: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 101
	i64 12269460666702402136, ; 219: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 40
	i64 12279246230491828964, ; 220: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 34
	i64 12346958216201575315, ; 221: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 133
	i64 12437742355241350664, ; 222: Google.Apis.dll => 0xac9bbcc62bfdb608 => 11
	i64 12451044538927396471, ; 223: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 80
	i64 12466513435562512481, ; 224: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 89
	i64 12487638416075308985, ; 225: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 74
	i64 12538491095302438457, ; 226: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 63
	i64 12550732019250633519, ; 227: System.IO.Compression => 0xae2d28465e8e1b2f => 144
	i64 12700543734426720211, ; 228: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 64
	i64 12828192437253469131, ; 229: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 138
	i64 12958614573187252691, ; 230: Google.Apis => 0xb3d63f4bf006c1d3 => 11
	i64 12963446364377008305, ; 231: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 143
	i64 12982280885948128408, ; 232: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 73
	i64 13084382143907087733, ; 233: Xamarin.Grpc.Context => 0xb595103c610bc575 => 127
	i64 13129914918964716986, ; 234: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 77
	i64 13370592475155966277, ; 235: System.Runtime.Serialization => 0xb98de304062ea945 => 147
	i64 13401370062847626945, ; 236: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 101
	i64 13402939433517888790, ; 237: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 119
	i64 13404347523447273790, ; 238: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 66
	i64 13454009404024712428, ; 239: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 120
	i64 13465488254036897740, ; 240: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 136
	i64 13491513212026656886, ; 241: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 61
	i64 13572454107664307259, ; 242: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 94
	i64 13609095008681508810, ; 243: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 130
	i64 13621154251410165619, ; 244: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 73
	i64 13647894001087880694, ; 245: System.Data.dll => 0xbd670f48cb071df6 => 42
	i64 13782512541859110153, ; 246: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 8
	i64 13828521679616088467, ; 247: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 135
	i64 13865727802090930648, ; 248: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 118
	i64 13959074834287824816, ; 249: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 80
	i64 13975254687929967048, ; 250: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 118
	i64 14124974489674258913, ; 251: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 63
	i64 14125464355221830302, ; 252: System.Threading.dll => 0xc407bafdbc707a9e => 3
	i64 14172845254133543601, ; 253: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 91
	i64 14261073672896646636, ; 254: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 92
	i64 14327695147300244862, ; 255: System.Reflection.dll => 0xc6d632d338eb4d7e => 153
	i64 14382082037123372364, ; 256: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 109
	i64 14495724990987328804, ; 257: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 95
	i64 14524915121004231475, ; 258: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 133
	i64 14644440854989303794, ; 259: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 90
	i64 14650706219563630045, ; 260: Grpc.Auth => 0xcb51c3af15b23ddd => 18
	i64 14671188939680189912, ; 261: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 128
	i64 14698606024688292729, ; 262: Xamarin.Io.PerfMark.PerfMarkApi => 0xcbfbf04d8af65379 => 132
	i64 14789919016435397935, ; 263: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 110
	i64 14792063746108907174, ; 264: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 120
	i64 14852515768018889994, ; 265: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 71
	i64 14889905118082851278, ; 266: GoogleGson.dll => 0xcea391d0969961ce => 17
	i64 14954917835170835695, ; 267: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 26
	i64 14987728460634540364, ; 268: System.IO.Compression.dll => 0xcfff1ba06622494c => 144
	i64 14988210264188246988, ; 269: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 74
	i64 15097078878581906526, ; 270: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 7
	i64 15150743910298169673, ; 271: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 93
	i64 15279429628684179188, ; 272: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 139
	i64 15370334346939861994, ; 273: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 70
	i64 15391712275433856905, ; 274: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 26
	i64 15582737692548360875, ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 88
	i64 15594006816328266073, ; 276: Square.Picasso => 0xd8690a9430443159 => 38
	i64 15609085926864131306, ; 277: System.dll => 0xd89e9cf3334914ea => 44
	i64 15788897513097211459, ; 278: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 115
	i64 15930129725311349754, ; 279: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 124
	i64 16154507427712707110, ; 280: System => 0xe03056ea4e39aa26 => 44
	i64 16303230644352379770, ; 281: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 129
	i64 16321164108206115771, ; 282: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 27
	i64 16361933716545543812, ; 283: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 79
	i64 16423015068819898779, ; 284: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 138
	i64 16565028646146589191, ; 285: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 146
	i64 16579050217386591297, ; 286: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 119
	i64 16621146507174665210, ; 287: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 67
	i64 16755018182064898362, ; 288: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 32
	i64 16822611501064131242, ; 289: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 142
	i64 16833383113903931215, ; 290: mscorlib => 0xe99c30c1484d7f4f => 29
	i64 16955525858597485057, ; 291: Google.Api.Gax => 0xeb4e20ef25a73a01 => 6
	i64 16991533501433402966, ; 292: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 5
	i64 17024911836938395553, ; 293: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 57
	i64 17037200463775726619, ; 294: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 82
	i64 17333249706306540043, ; 295: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 152
	i64 17522591619082469157, ; 296: GoogleGson => 0xf32cc03d27a5bf25 => 17
	i64 17553799493972570483, ; 297: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 16
	i64 17605100189928655442, ; 298: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 108
	i64 17685921127322830888, ; 299: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 4
	i64 17704177640604968747, ; 300: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 89
	i64 17710060891934109755, ; 301: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 87
	i64 17838668724098252521, ; 302: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 39
	i64 17891337867145587222, ; 303: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 134
	i64 17928294245072900555, ; 304: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 145
	i64 17986907704309214542, ; 305: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 123
	i64 18025913125965088385, ; 306: System.Threading => 0xfa28e87b91334681 => 3
	i64 18116111925905154859, ; 307: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 61
	i64 18129453464017766560, ; 308: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 148
	i64 18260797123374478311, ; 309: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 77
	i64 18370042311372477656, ; 310: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 33
	i64 18380184030268848184 ; 311: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 102
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 76, i32 14, i32 28, i32 64, i32 96, i32 69, i32 54, i32 86, ; 0..7
	i32 122, i32 143, i32 33, i32 75, i32 149, i32 155, i32 116, i32 132, ; 8..15
	i32 126, i32 32, i32 60, i32 112, i32 109, i32 147, i32 111, i32 125, ; 16..23
	i32 34, i32 58, i32 88, i32 82, i32 25, i32 30, i32 46, i32 16, ; 24..31
	i32 59, i32 96, i32 24, i32 56, i32 125, i32 87, i32 128, i32 137, ; 32..39
	i32 30, i32 91, i32 62, i32 38, i32 75, i32 150, i32 95, i32 84, ; 40..47
	i32 50, i32 131, i32 12, i32 68, i32 100, i32 51, i32 55, i32 52, ; 48..55
	i32 29, i32 50, i32 97, i32 10, i32 23, i32 112, i32 116, i32 37, ; 56..63
	i32 36, i32 83, i32 57, i32 49, i32 140, i32 110, i32 123, i32 18, ; 64..71
	i32 98, i32 48, i32 51, i32 1, i32 94, i32 76, i32 13, i32 46, ; 72..79
	i32 130, i32 8, i32 69, i32 124, i32 31, i32 148, i32 0, i32 102, ; 80..87
	i32 111, i32 35, i32 85, i32 55, i32 14, i32 25, i32 106, i32 90, ; 88..95
	i32 131, i32 100, i32 99, i32 4, i32 67, i32 41, i32 10, i32 104, ; 96..103
	i32 79, i32 65, i32 53, i32 108, i32 126, i32 31, i32 86, i32 141, ; 104..111
	i32 84, i32 62, i32 72, i32 117, i32 150, i32 151, i32 49, i32 9, ; 112..119
	i32 107, i32 81, i32 153, i32 151, i32 15, i32 106, i32 47, i32 136, ; 120..127
	i32 5, i32 42, i32 58, i32 15, i32 114, i32 35, i32 146, i32 2, ; 128..135
	i32 83, i32 43, i32 53, i32 142, i32 22, i32 2, i32 139, i32 154, ; 136..143
	i32 45, i32 66, i32 85, i32 54, i32 40, i32 78, i32 99, i32 36, ; 144..151
	i32 105, i32 22, i32 145, i32 7, i32 43, i32 135, i32 93, i32 104, ; 152..159
	i32 59, i32 20, i32 48, i32 68, i32 28, i32 65, i32 149, i32 122, ; 160..167
	i32 113, i32 78, i32 155, i32 47, i32 21, i32 105, i32 121, i32 9, ; 168..175
	i32 137, i32 72, i32 13, i32 134, i32 98, i32 140, i32 70, i32 24, ; 176..183
	i32 154, i32 113, i32 6, i32 60, i32 19, i32 115, i32 45, i32 152, ; 184..191
	i32 129, i32 27, i32 41, i32 52, i32 117, i32 37, i32 23, i32 103, ; 192..199
	i32 12, i32 71, i32 121, i32 107, i32 92, i32 19, i32 21, i32 127, ; 200..207
	i32 103, i32 20, i32 114, i32 56, i32 97, i32 1, i32 81, i32 141, ; 208..215
	i32 0, i32 39, i32 101, i32 40, i32 34, i32 133, i32 11, i32 80, ; 216..223
	i32 89, i32 74, i32 63, i32 144, i32 64, i32 138, i32 11, i32 143, ; 224..231
	i32 73, i32 127, i32 77, i32 147, i32 101, i32 119, i32 66, i32 120, ; 232..239
	i32 136, i32 61, i32 94, i32 130, i32 73, i32 42, i32 8, i32 135, ; 240..247
	i32 118, i32 80, i32 118, i32 63, i32 3, i32 91, i32 92, i32 153, ; 248..255
	i32 109, i32 95, i32 133, i32 90, i32 18, i32 128, i32 132, i32 110, ; 256..263
	i32 120, i32 71, i32 17, i32 26, i32 144, i32 74, i32 7, i32 93, ; 264..271
	i32 139, i32 70, i32 26, i32 88, i32 38, i32 44, i32 115, i32 124, ; 272..279
	i32 44, i32 129, i32 27, i32 79, i32 138, i32 146, i32 119, i32 67, ; 280..287
	i32 32, i32 142, i32 29, i32 6, i32 5, i32 57, i32 82, i32 152, ; 288..295
	i32 17, i32 16, i32 108, i32 4, i32 89, i32 87, i32 39, i32 134, ; 296..303
	i32 145, i32 123, i32 3, i32 61, i32 148, i32 77, i32 33, i32 102 ; 312..311
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

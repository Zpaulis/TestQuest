; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 66
	i64 96808603140984794, ; 1: Google.Cloud.Location.dll => 0x157eee9616b8fda => 14
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 27
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 54
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 85
	i64 316157742385208084, ; 5: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 59
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 75
	i64 687654259221141486, ; 7: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 111
	i64 702024105029695270, ; 8: System.Drawing.Common => 0x9be17343c0e7726 => 134
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 65
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 132
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 145
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 105
	i64 1155807931551632357, ; 13: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0x100a4130a4b6cbe5 => 121
	i64 1274338068859211160, ; 14: Xamarin.Grpc.Api => 0x11af5bb8ce1c4d98 => 115
	i64 1315114680217950157, ; 15: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 50
	i64 1368633735297491523, ; 16: Xamarin.Firebase.Database.Collection.dll => 0x12fe5d218405e243 => 101
	i64 1392315331768750440, ; 17: Xamarin.Firebase.Auth.Interop.dll => 0x13527f6add681168 => 98
	i64 1425944114962822056, ; 18: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 138
	i64 1465843056802068477, ; 19: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 100
	i64 1474586420366808421, ; 20: Xamarin.Grpc.Android.dll => 0x1476c88960941565 => 114
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 48
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 77
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 71
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 29
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 38
	i64 1769105627832031750, ; 26: Google.Protobuf => 0x188d203205129a06 => 16
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 49
	i64 1836611346387731153, ; 28: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 85
	i64 1865037103900624886, ; 29: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 24
	i64 1875917498431009007, ; 30: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 46
	i64 1956817255800234857, ; 31: Xamarin.Grpc.Android => 0x1b2802ed2e53e369 => 114
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 76
	i64 1990714127648872464, ; 33: Xamarin.Grpc.Core.dll => 0x1ba06ff3abdcd810 => 117
	i64 2064708342624596306, ; 34: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 126
	i64 2133195048986300728, ; 35: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 29
	i64 2136356949452311481, ; 36: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 80
	i64 2165725771938924357, ; 37: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 52
	i64 2262844636196693701, ; 38: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 65
	i64 2284400282711631002, ; 39: System.Web.Services => 0x1fb3d1f42fd4249a => 140
	i64 2304837677853103545, ; 40: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 84
	i64 2329709569556905518, ; 41: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 73
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 42
	i64 2343783402604882194, ; 43: Xamarin.Grpc.Stub.dll => 0x2086ca9636b86912 => 120
	i64 2445261912722553526, ; 44: Google.Cloud.Firestore.dll => 0x21ef50c10a9ebab6 => 12
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 58
	i64 2479423007379663237, ; 46: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 89
	i64 2497223385847772520, ; 47: System.Runtime => 0x22a7eb7046413568 => 43
	i64 2547086958574651984, ; 48: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 45
	i64 2592350477072141967, ; 49: System.Xml.dll => 0x23f9e10627330e8f => 44
	i64 2624866290265602282, ; 50: mscorlib.dll => 0x246d65fbde2db8ea => 28
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 42
	i64 2787234703088983483, ; 52: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 86
	i64 2812926542227278819, ; 53: Google.Apis.Core.dll => 0x270985c960b98be3 => 10
	i64 2923871038697555247, ; 54: Jsr305Binding => 0x2893ad37e69ec52f => 23
	i64 2951672403965468947, ; 55: Xamarin.Firebase.Database.Collection => 0x28f67269abaf6113 => 101
	i64 3017704767998173186, ; 56: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 105
	i64 3070901203286954241, ; 57: Square.OkIO.JVM => 0x2a9e085fc23d1101 => 31
	i64 3171992396844006720, ; 58: Square.OkIO => 0x2c052e476c207d40 => 30
	i64 3289520064315143713, ; 59: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 72
	i64 3303437397778967116, ; 60: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 47
	i64 3311221304742556517, ; 61: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 41
	i64 3344514922410554693, ; 62: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 129
	i64 3364695309916733813, ; 63: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 99
	i64 3411255996856937470, ; 64: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 112
	i64 3430216265859992823, ; 65: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 18
	i64 3493805808809882663, ; 66: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 87
	i64 3531994851595924923, ; 67: System.Numerics => 0x31042a9aade235bb => 40
	i64 3571415421602489686, ; 68: System.Runtime.dll => 0x319037675df7e556 => 43
	i64 3716579019761409177, ; 69: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 70: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 83
	i64 3772598417116884899, ; 71: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 66
	i64 3893087497687830326, ; 72: Google.Cloud.Firestore.V1.dll => 0x36070673e3328f36 => 13
	i64 3966267475168208030, ; 73: System.Memory => 0x370b03412596249e => 38
	i64 4045730230152541805, ; 74: Xamarin.Grpc.Protobuf.Lite.dll => 0x38255235894d366d => 119
	i64 4056584864658557221, ; 75: Google.Apis.Auth => 0x384be27113330925 => 8
	i64 4201423742386704971, ; 76: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 59
	i64 4247996603072512073, ; 77: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 113
	i64 4525561845656915374, ; 78: System.ServiceModel.Internals => 0x3ece06856b710dae => 139
	i64 4578348326057651078, ; 79: TestQuest.dll => 0x3f898f8ba0abab86 => 0
	i64 4636684751163556186, ; 80: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 91
	i64 4702770163853758138, ; 81: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 100
	i64 4759461199762736555, ; 82: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 74
	i64 4794310189461587505, ; 83: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 45
	i64 5098983611934048327, ; 84: Google.Cloud.Location => 0x46c33a9458de0047 => 14
	i64 5203618020066742981, ; 85: Xamarin.Essentials => 0x4836f704f0e652c5 => 95
	i64 5205316157927637098, ; 86: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 79
	i64 5290215063822704973, ; 87: Xamarin.Grpc.Stub => 0x496a9e926092a14d => 120
	i64 5376510917114486089, ; 88: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 89
	i64 5408338804355907810, ; 89: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 88
	i64 5446034149219586269, ; 90: System.Diagnostics.Debug => 0x4b94333452e150dd => 4
	i64 5451019430259338467, ; 91: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 57
	i64 5507995362134886206, ; 92: System.Core.dll => 0x4c705499688c873e => 34
	i64 5665389054145784248, ; 93: Google.Apis.Core => 0x4e9f815406bee9b8 => 10
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 93
	i64 5757522595884336624, ; 95: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 55
	i64 6118452257458269359, ; 96: Xamarin.Firebase.AppCheck.Interop.dll => 0x54e91be944fcacaf => 97
	i64 6135981624229292808, ; 97: Xamarin.Grpc.Api.dll => 0x552762c70482eb08 => 115
	i64 6319713645133255417, ; 98: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 75
	i64 6401242110442382339, ; 99: Xamarin.Protobuf.JavaLite => 0x58d5c7c8c230a403 => 130
	i64 6401687960814735282, ; 100: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 73
	i64 6504860066809920875, ; 101: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 52
	i64 6548213210057960872, ; 102: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 62
	i64 6589202984700901502, ; 103: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 106
	i64 6591024623626361694, ; 104: System.Web.Services.dll => 0x5b7805f9751a1b5e => 140
	i64 6876862101832370452, ; 105: System.Xml.Linq => 0x5f6f85a57d108914 => 141
	i64 6894844156784520562, ; 106: System.Numerics.Vectors => 0x5faf683aead1ad72 => 41
	i64 6941080589610463230, ; 107: Google.Apis.Auth.PlatformServices => 0x6053ac0555172ffe => 9
	i64 6975328107116786489, ; 108: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 96
	i64 7103753931438454322, ; 109: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 70
	i64 7338192458477945005, ; 110: System.Reflection => 0x65d67f295d0740ad => 143
	i64 7488575175965059935, ; 111: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 141
	i64 7621211152690795761, ; 112: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 15
	i64 7637365915383206639, ; 113: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 95
	i64 7654504624184590948, ; 114: System.Net.Http => 0x6a3a4366801b8264 => 39
	i64 7735352534559001595, ; 115: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 125
	i64 7740912860115050295, ; 116: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 5
	i64 7820441508502274321, ; 117: System.Data => 0x6c87ca1e14ff8111 => 131
	i64 7836164640616011524, ; 118: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 48
	i64 7843473411302439824, ; 119: Google.LongRunning => 0x6cd99d82d5e73b90 => 15
	i64 7991572870742010042, ; 120: Xamarin.Firebase.Firestore.dll => 0x6ee7c52f4d39e8ba => 103
	i64 8044118961405839122, ; 121: System.ComponentModel.Composition => 0x6fa2739369944712 => 137
	i64 8064050204834738623, ; 122: System.Collections.dll => 0x6fe942efa61731bf => 2
	i64 8083354569033831015, ; 123: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 72
	i64 8087206902342787202, ; 124: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 35
	i64 8103644804370223335, ; 125: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 133
	i64 8167236081217502503, ; 126: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 22
	i64 8185542183669246576, ; 127: System.Collections => 0x7198e33f4794aa70 => 2
	i64 8187640529827139739, ; 128: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 128
	i64 8290740647658429042, ; 129: System.Runtime.Extensions => 0x730ea0b15c929a72 => 144
	i64 8293702073711834350, ; 130: System.Linq.Async => 0x731926181883b4ee => 37
	i64 8398329775253868912, ; 131: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 56
	i64 8426919725312979251, ; 132: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 74
	i64 8518412311883997971, ; 133: System.Collections.Immutable => 0x76377add7c28e313 => 33
	i64 8598790081731763592, ; 134: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 68
	i64 8601935802264776013, ; 135: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 88
	i64 8609060182490045521, ; 136: Square.OkIO.dll => 0x7779869f8b475c51 => 30
	i64 8613760304861496997, ; 137: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x778a395c0fa146a5 => 94
	i64 8626175481042262068, ; 138: Java.Interop => 0x77b654e585b55834 => 22
	i64 8684531736582871431, ; 139: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 136
	i64 8685687024490312494, ; 140: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 7
	i64 8725526185868997716, ; 141: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 35
	i64 8853378295825400934, ; 142: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 124
	i64 8951477988056063522, ; 143: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 82
	i64 9312692141327339315, ; 144: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 93
	i64 9324707631942237306, ; 145: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 49
	i64 9404599086328396064, ; 146: Grpc.Net.Client.dll => 0x8283d90a93913920 => 20
	i64 9662334977499516867, ; 147: System.Numerics.dll => 0x8617827802b0cfc3 => 40
	i64 9678050649315576968, ; 148: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 58
	i64 9808709177481450983, ; 149: Mono.Android.dll => 0x881f890734e555e7 => 27
	i64 9825649861376906464, ; 150: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 55
	i64 9834056768316610435, ; 151: System.Transactions.dll => 0x8879968718899783 => 132
	i64 9875200773399460291, ; 152: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 111
	i64 9880217525690912228, ; 153: Xamarin.Firebase.Database.dll => 0x891d957df2654de4 => 102
	i64 9907349773706910547, ; 154: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 68
	i64 9998632235833408227, ; 155: Mono.Security => 0x8ac2470b209ebae3 => 145
	i64 10038780035334861115, ; 156: System.Net.Http.dll => 0x8b50e941206af13b => 39
	i64 10051920404523413229, ; 157: Grpc.Net.Common => 0x8b7f9859be1e6eed => 21
	i64 10071983904436292605, ; 158: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x8bc6dfff57608bfd => 94
	i64 10167561595017141208, ; 159: Xamarin.GoogleAndroid.Annotations.dll => 0x8d1a6f668ee69bd8 => 110
	i64 10218821437939648382, ; 160: Google.Apis.Auth.PlatformServices.dll => 0x8dd08bf4c78a077e => 9
	i64 10226222362177979215, ; 161: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 126
	i64 10229024438826829339, ; 162: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 62
	i64 10282208442277544177, ; 163: Google.Cloud.Firestore.V1 => 0x8eb1be19cc79c0f1 => 13
	i64 10321854143672141184, ; 164: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 123
	i64 10376576884623852283, ; 165: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 87
	i64 10406448008575299332, ; 166: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 129
	i64 10430153318873392755, ; 167: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 60
	i64 10447083246144586668, ; 168: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 24
	i64 10714184849103829812, ; 169: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 144
	i64 10798320213170575484, ; 170: Xamarin.Firebase.Database => 0x95db57059cf3d87c => 102
	i64 10823124638835005028, ; 171: Google.Api.Gax.dll => 0x963376840189d664 => 6
	i64 10847732767863316357, ; 172: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 50
	i64 10854473764158213966, ; 173: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 19
	i64 10857315922431607327, ; 174: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x96acef4e92ba821f => 104
	i64 10953751836886437922, ; 175: System.Linq.Async.dll => 0x98038b429b661022 => 37
	i64 10964653383833615866, ; 176: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 142
	i64 10966933586012635777, ; 177: Xamarin.Grpc.OkHttp.dll => 0x98325ffdbd958281 => 118
	i64 11002576679268595294, ; 178: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 26
	i64 11023048688141570732, ; 179: System.Core => 0x98f9bc61168392ac => 34
	i64 11037814507248023548, ; 180: System.Xml => 0x992e31d0412bf7fc => 44
	i64 11071824625609515081, ; 181: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 106
	i64 11072526564452562534, ; 182: Square.OkIO.JVM.dll => 0x99a9843ee0457666 => 31
	i64 11136029745144976707, ; 183: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 23
	i64 11162124722117608902, ; 184: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 92
	i64 11326322297822330275, ; 185: Google.Cloud.Firestore => 0x9d2f2e1ed5493da3 => 12
	i64 11340910727871153756, ; 186: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 61
	i64 11361951459766490322, ; 187: Xamarin.GoogleAndroid.Annotations => 0x9dadc2a78a9cd4d2 => 110
	i64 11376351552967644903, ; 188: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 96
	i64 11392833485892708388, ; 189: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 81
	i64 11435314654401632883, ; 190: Grpc.Core.Api => 0x9eb266175e6d9a73 => 19
	i64 11441445377436144712, ; 191: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 21
	i64 11496466075493495264, ; 192: Xamarin.Grpc.Context.dll => 0x9f8ba6fc1a1e71e0 => 116
	i64 11529969570048099689, ; 193: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 92
	i64 11543207250219725293, ; 194: Grpc.Net.Client => 0xa031b5d5e60f71ed => 20
	i64 11543422055205009205, ; 195: Xamarin.Firebase.Firestore => 0xa032793314e77735 => 103
	i64 11580057168383206117, ; 196: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 46
	i64 11591352189662810718, ; 197: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 86
	i64 11597940890313164233, ; 198: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 199: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 70
	i64 11864794479965678424, ; 200: Xamarin.Protobuf.JavaLite.dll => 0xa4a837b7975eab58 => 130
	i64 12021485101958451063, ; 201: TestQuest => 0xa6d4e501f6e24f77 => 0
	i64 12102847907131387746, ; 202: System.Buffers => 0xa7f5f40c43256f62 => 32
	i64 12137774235383566651, ; 203: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 90
	i64 12269460666702402136, ; 204: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 33
	i64 12346958216201575315, ; 205: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 122
	i64 12437742355241350664, ; 206: Google.Apis.dll => 0xac9bbcc62bfdb608 => 11
	i64 12451044538927396471, ; 207: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 69
	i64 12466513435562512481, ; 208: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 78
	i64 12487638416075308985, ; 209: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 64
	i64 12538491095302438457, ; 210: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 53
	i64 12550732019250633519, ; 211: System.IO.Compression => 0xae2d28465e8e1b2f => 135
	i64 12700543734426720211, ; 212: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 54
	i64 12828192437253469131, ; 213: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 127
	i64 12958614573187252691, ; 214: Google.Apis => 0xb3d63f4bf006c1d3 => 11
	i64 12963446364377008305, ; 215: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 134
	i64 12982280885948128408, ; 216: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 63
	i64 13084382143907087733, ; 217: Xamarin.Grpc.Context => 0xb595103c610bc575 => 116
	i64 13129914918964716986, ; 218: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 67
	i64 13370592475155966277, ; 219: System.Runtime.Serialization => 0xb98de304062ea945 => 138
	i64 13401370062847626945, ; 220: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 90
	i64 13402939433517888790, ; 221: Xamarin.Google.Guava.FailureAccess => 0xba00ce6728e8b516 => 108
	i64 13404347523447273790, ; 222: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 56
	i64 13454009404024712428, ; 223: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 109
	i64 13465488254036897740, ; 224: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 125
	i64 13491513212026656886, ; 225: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 51
	i64 13572454107664307259, ; 226: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 83
	i64 13609095008681508810, ; 227: Xamarin.Grpc.Protobuf.Lite => 0xbcdd37ce6b00bfca => 119
	i64 13621154251410165619, ; 228: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 63
	i64 13647894001087880694, ; 229: System.Data.dll => 0xbd670f48cb071df6 => 131
	i64 13782512541859110153, ; 230: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 8
	i64 13828521679616088467, ; 231: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 124
	i64 13865727802090930648, ; 232: Xamarin.Google.Guava.dll => 0xc06cf5f8e3e341d8 => 107
	i64 13959074834287824816, ; 233: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 69
	i64 13975254687929967048, ; 234: Xamarin.Google.Guava => 0xc1f2141837ada1c8 => 107
	i64 14124974489674258913, ; 235: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 53
	i64 14125464355221830302, ; 236: System.Threading.dll => 0xc407bafdbc707a9e => 3
	i64 14172845254133543601, ; 237: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 80
	i64 14261073672896646636, ; 238: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 81
	i64 14327695147300244862, ; 239: System.Reflection.dll => 0xc6d632d338eb4d7e => 143
	i64 14382082037123372364, ; 240: Xamarin.Firebase.Auth.Interop => 0xc7976b69c943d54c => 98
	i64 14495724990987328804, ; 241: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 84
	i64 14524915121004231475, ; 242: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 122
	i64 14644440854989303794, ; 243: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 79
	i64 14650706219563630045, ; 244: Grpc.Auth => 0xcb51c3af15b23ddd => 18
	i64 14671188939680189912, ; 245: Xamarin.Grpc.Core => 0xcb9a889bfe470dd8 => 117
	i64 14698606024688292729, ; 246: Xamarin.Io.PerfMark.PerfMarkApi => 0xcbfbf04d8af65379 => 121
	i64 14789919016435397935, ; 247: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 99
	i64 14792063746108907174, ; 248: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 109
	i64 14852515768018889994, ; 249: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 61
	i64 14889905118082851278, ; 250: GoogleGson.dll => 0xcea391d0969961ce => 17
	i64 14954917835170835695, ; 251: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 25
	i64 14987728460634540364, ; 252: System.IO.Compression.dll => 0xcfff1ba06622494c => 135
	i64 14988210264188246988, ; 253: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 64
	i64 15097078878581906526, ; 254: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 7
	i64 15150743910298169673, ; 255: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 82
	i64 15279429628684179188, ; 256: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 128
	i64 15370334346939861994, ; 257: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 60
	i64 15391712275433856905, ; 258: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 25
	i64 15582737692548360875, ; 259: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 77
	i64 15609085926864131306, ; 260: System.dll => 0xd89e9cf3334914ea => 36
	i64 15788897513097211459, ; 261: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xdb1d6ea28f352e43 => 104
	i64 15930129725311349754, ; 262: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 113
	i64 16154507427712707110, ; 263: System => 0xe03056ea4e39aa26 => 36
	i64 16303230644352379770, ; 264: Xamarin.Grpc.OkHttp => 0xe240b5e48fe2eb7a => 118
	i64 16321164108206115771, ; 265: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 26
	i64 16423015068819898779, ; 266: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 127
	i64 16565028646146589191, ; 267: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 137
	i64 16579050217386591297, ; 268: Xamarin.Google.Guava.FailureAccess.dll => 0xe6149e5548b0c441 => 108
	i64 16621146507174665210, ; 269: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 57
	i64 16822611501064131242, ; 270: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 133
	i64 16833383113903931215, ; 271: mscorlib => 0xe99c30c1484d7f4f => 28
	i64 16955525858597485057, ; 272: Google.Api.Gax => 0xeb4e20ef25a73a01 => 6
	i64 16991533501433402966, ; 273: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 5
	i64 17024911836938395553, ; 274: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 47
	i64 17037200463775726619, ; 275: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 71
	i64 17333249706306540043, ; 276: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 142
	i64 17522591619082469157, ; 277: GoogleGson => 0xf32cc03d27a5bf25 => 17
	i64 17553799493972570483, ; 278: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 16
	i64 17605100189928655442, ; 279: Xamarin.Firebase.AppCheck.Interop => 0xf451e158cfdc0a52 => 97
	i64 17685921127322830888, ; 280: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 4
	i64 17704177640604968747, ; 281: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 78
	i64 17710060891934109755, ; 282: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 76
	i64 17838668724098252521, ; 283: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 32
	i64 17891337867145587222, ; 284: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 123
	i64 17928294245072900555, ; 285: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 136
	i64 17986907704309214542, ; 286: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 112
	i64 18025913125965088385, ; 287: System.Threading => 0xfa28e87b91334681 => 3
	i64 18116111925905154859, ; 288: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 51
	i64 18129453464017766560, ; 289: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 139
	i64 18260797123374478311, ; 290: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 67
	i64 18380184030268848184 ; 291: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 91
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 66, i32 14, i32 27, i32 54, i32 85, i32 59, i32 75, i32 111, ; 0..7
	i32 134, i32 65, i32 132, i32 145, i32 105, i32 121, i32 115, i32 50, ; 8..15
	i32 101, i32 98, i32 138, i32 100, i32 114, i32 48, i32 77, i32 71, ; 16..23
	i32 29, i32 38, i32 16, i32 49, i32 85, i32 24, i32 46, i32 114, ; 24..31
	i32 76, i32 117, i32 126, i32 29, i32 80, i32 52, i32 65, i32 140, ; 32..39
	i32 84, i32 73, i32 42, i32 120, i32 12, i32 58, i32 89, i32 43, ; 40..47
	i32 45, i32 44, i32 28, i32 42, i32 86, i32 10, i32 23, i32 101, ; 48..55
	i32 105, i32 31, i32 30, i32 72, i32 47, i32 41, i32 129, i32 99, ; 56..63
	i32 112, i32 18, i32 87, i32 40, i32 43, i32 1, i32 83, i32 66, ; 64..71
	i32 13, i32 38, i32 119, i32 8, i32 59, i32 113, i32 139, i32 0, ; 72..79
	i32 91, i32 100, i32 74, i32 45, i32 14, i32 95, i32 79, i32 120, ; 80..87
	i32 89, i32 88, i32 4, i32 57, i32 34, i32 10, i32 93, i32 55, ; 88..95
	i32 97, i32 115, i32 75, i32 130, i32 73, i32 52, i32 62, i32 106, ; 96..103
	i32 140, i32 141, i32 41, i32 9, i32 96, i32 70, i32 143, i32 141, ; 104..111
	i32 15, i32 95, i32 39, i32 125, i32 5, i32 131, i32 48, i32 15, ; 112..119
	i32 103, i32 137, i32 2, i32 72, i32 35, i32 133, i32 22, i32 2, ; 120..127
	i32 128, i32 144, i32 37, i32 56, i32 74, i32 33, i32 68, i32 88, ; 128..135
	i32 30, i32 94, i32 22, i32 136, i32 7, i32 35, i32 124, i32 82, ; 136..143
	i32 93, i32 49, i32 20, i32 40, i32 58, i32 27, i32 55, i32 132, ; 144..151
	i32 111, i32 102, i32 68, i32 145, i32 39, i32 21, i32 94, i32 110, ; 152..159
	i32 9, i32 126, i32 62, i32 13, i32 123, i32 87, i32 129, i32 60, ; 160..167
	i32 24, i32 144, i32 102, i32 6, i32 50, i32 19, i32 104, i32 37, ; 168..175
	i32 142, i32 118, i32 26, i32 34, i32 44, i32 106, i32 31, i32 23, ; 176..183
	i32 92, i32 12, i32 61, i32 110, i32 96, i32 81, i32 19, i32 21, ; 184..191
	i32 116, i32 92, i32 20, i32 103, i32 46, i32 86, i32 1, i32 70, ; 192..199
	i32 130, i32 0, i32 32, i32 90, i32 33, i32 122, i32 11, i32 69, ; 200..207
	i32 78, i32 64, i32 53, i32 135, i32 54, i32 127, i32 11, i32 134, ; 208..215
	i32 63, i32 116, i32 67, i32 138, i32 90, i32 108, i32 56, i32 109, ; 216..223
	i32 125, i32 51, i32 83, i32 119, i32 63, i32 131, i32 8, i32 124, ; 224..231
	i32 107, i32 69, i32 107, i32 53, i32 3, i32 80, i32 81, i32 143, ; 232..239
	i32 98, i32 84, i32 122, i32 79, i32 18, i32 117, i32 121, i32 99, ; 240..247
	i32 109, i32 61, i32 17, i32 25, i32 135, i32 64, i32 7, i32 82, ; 248..255
	i32 128, i32 60, i32 25, i32 77, i32 36, i32 104, i32 113, i32 36, ; 256..263
	i32 118, i32 26, i32 127, i32 137, i32 108, i32 57, i32 133, i32 28, ; 264..271
	i32 6, i32 5, i32 47, i32 71, i32 142, i32 17, i32 16, i32 97, ; 272..279
	i32 4, i32 78, i32 76, i32 32, i32 123, i32 136, i32 112, i32 3, ; 280..287
	i32 51, i32 139, i32 67, i32 91 ; 288..291
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
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
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

; ModuleID = 'obj/Debug/android/marshal_methods.x86.ll'
source_filename = "obj/Debug/android/marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [312 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 130
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 125
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 86
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 120
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 30
	i32 103834273, ; 5: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 107
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 137
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 64
	i32 201929280, ; 8: Xamarin.Firebase.Database => 0xc093240 => 113
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 62
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 227054016, ; 11: Xamarin.GoogleAndroid.Annotations.dll => 0xd8891c0 => 121
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 82
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 150
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 67
	i32 266337479, ; 15: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 119
	i32 271099684, ; 16: Xamarin.Grpc.OkHttp => 0x1028a724 => 129
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 81
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 55
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 48
	i32 324489690, ; 20: Xamarin.Android.Support.Exif.dll => 0x135751da => 54
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 83
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 33
	i32 364956269, ; 23: Grpc.Net.Common => 0x15c0ca6d => 21
	i32 371306672, ; 24: Grpc.Core.Api.dll => 0x1621b0b0 => 19
	i32 385762202, ; 25: System.Memory.dll => 0x16fe439a => 46
	i32 391886110, ; 26: Grpc.Net.Client.dll => 0x175bb51e => 20
	i32 441335492, ; 27: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 66
	i32 442521989, ; 28: Xamarin.Essentials => 0x1a605985 => 106
	i32 442565967, ; 29: System.Collections => 0x1a61054f => 2
	i32 450948140, ; 30: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 80
	i32 453011810, ; 31: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 112
	i32 465846621, ; 32: mscorlib => 0x1bc4415d => 29
	i32 469710990, ; 33: System.dll => 0x1bff388e => 44
	i32 476646585, ; 34: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 81
	i32 486930444, ; 35: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 90
	i32 493301629, ; 36: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 108
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 38: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 137
	i32 545304856, ; 39: System.Runtime.Extensions => 0x2080b118 => 154
	i32 548916678, ; 40: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 24
	i32 557405415, ; 41: Jsr305Binding => 0x213954e7 => 23
	i32 605376203, ; 42: System.IO.Compression.FileSystem => 0x24154ecb => 145
	i32 627609679, ; 43: Xamarin.AndroidX.CustomView => 0x2568904f => 72
	i32 639843206, ; 44: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 78
	i32 646990296, ; 45: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 13
	i32 663517072, ; 46: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 102
	i32 666292255, ; 47: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 60
	i32 690569205, ; 48: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 49: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 139
	i32 692692150, ; 50: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 53
	i32 700284507, ; 51: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 134
	i32 712915335, ; 52: Xamarin.Grpc.Api => 0x2a7e3987 => 126
	i32 714456728, ; 53: Square.OkIO.JVM.dll => 0x2a95be98 => 37
	i32 720511267, ; 54: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 138
	i32 748832960, ; 55: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 31
	i32 775507847, ; 56: System.IO.Compression => 0x2e394f87 => 144
	i32 790371945, ; 57: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 73
	i32 809851609, ; 58: System.Drawing.Common.dll => 0x30455ad9 => 143
	i32 843511501, ; 59: Xamarin.AndroidX.Print => 0x3246f6cd => 92
	i32 928116545, ; 60: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 120
	i32 955402788, ; 61: Newtonsoft.Json => 0x38f24a24 => 30
	i32 956575887, ; 62: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 138
	i32 961995525, ; 63: Square.OkIO.dll => 0x3956e305 => 36
	i32 967690846, ; 64: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 83
	i32 975236339, ; 65: System.Diagnostics.Tracing => 0x3a20ecf3 => 152
	i32 992768348, ; 66: System.Collections.dll => 0x3b2c715c => 2
	i32 1012816738, ; 67: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 96
	i32 1028951442, ; 68: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1031528504, ; 69: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 117
	i32 1035644815, ; 70: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 59
	i32 1049751285, ; 71: Google.Api.CommonProtos.dll => 0x3e91eef5 => 5
	i32 1052210849, ; 72: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 87
	i32 1067306892, ; 73: GoogleGson => 0x3f9dcf8c => 17
	i32 1084122840, ; 74: Xamarin.Kotlin.StdLib => 0x409e66d8 => 136
	i32 1098259244, ; 75: System => 0x41761b2c => 44
	i32 1111591002, ; 76: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x4241885a => 105
	i32 1145085672, ; 77: System.Linq.Async.dll => 0x44409ee8 => 45
	i32 1159499262, ; 78: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 131
	i32 1175144683, ; 79: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 100
	i32 1203173028, ; 80: Grpc.Net.Client => 0x47b6f6a4 => 20
	i32 1204270330, ; 81: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 60
	i32 1221286664, ; 82: Square.OkHttp3 => 0x48cb5b08 => 35
	i32 1230765884, ; 83: Xamarin.Grpc.Stub => 0x495bff3c => 131
	i32 1263886435, ; 84: Xamarin.Google.Guava.dll => 0x4b556063 => 118
	i32 1264511973, ; 85: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 97
	i32 1267360935, ; 86: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 101
	i32 1275534314, ; 87: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 139
	i32 1292207520, ; 88: SQLitePCLRaw.core.dll => 0x4d0585a0 => 32
	i32 1293217323, ; 89: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 75
	i32 1316849161, ; 90: Xamarin.Io.PerfMark.PerfMarkApi => 0x4e7d8609 => 132
	i32 1333047053, ; 91: Xamarin.Firebase.Common => 0x4f74af0d => 110
	i32 1365406463, ; 92: System.ServiceModel.Internals.dll => 0x516272ff => 148
	i32 1376866003, ; 93: Xamarin.AndroidX.SavedState => 0x52114ed3 => 96
	i32 1379897097, ; 94: Xamarin.JavaX.Inject => 0x523f8f09 => 133
	i32 1406073936, ; 95: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 68
	i32 1406299041, ; 96: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 119
	i32 1411638395, ; 97: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 50
	i32 1411702249, ; 98: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 109
	i32 1437713837, ; 99: Grpc.Auth => 0x55b1c5ad => 18
	i32 1457743152, ; 100: System.Runtime.Extensions.dll => 0x56e36530 => 154
	i32 1461234159, ; 101: System.Collections.Immutable.dll => 0x5718a9ef => 40
	i32 1462112819, ; 102: System.IO.Compression.dll => 0x57261233 => 144
	i32 1469204771, ; 103: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 58
	i32 1479771757, ; 104: System.Collections.Immutable => 0x5833866d => 40
	i32 1490351284, ; 105: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 25
	i32 1544135863, ; 106: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 126
	i32 1580996379, ; 107: Google.Apis.Auth.PlatformServices => 0x5e3c171b => 9
	i32 1582372066, ; 108: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 74
	i32 1592978981, ; 109: System.Runtime.Serialization.dll => 0x5ef2ee25 => 147
	i32 1597949149, ; 110: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 117
	i32 1622152042, ; 111: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 89
	i32 1624863272, ; 112: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 104
	i32 1635184631, ; 113: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 78
	i32 1636350590, ; 114: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 71
	i32 1639515021, ; 115: System.Net.Http.dll => 0x61b9038d => 47
	i32 1657153582, ; 116: System.Runtime => 0x62c6282e => 51
	i32 1658241508, ; 117: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 98
	i32 1658251792, ; 118: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 116
	i32 1664238415, ; 119: Xamarin.Firebase.Database.Collection => 0x6332434f => 112
	i32 1670060433, ; 120: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 67
	i32 1688112883, ; 121: Microsoft.Data.Sqlite => 0x649e8ef3 => 25
	i32 1698840827, ; 122: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 135
	i32 1701541528, ; 123: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1711441057, ; 124: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 33
	i32 1726116996, ; 125: System.Reflection.dll => 0x66e27484 => 153
	i32 1729485958, ; 126: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 63
	i32 1748729059, ; 127: Xamarin.GoogleAndroid.Annotations => 0x683b7ce3 => 121
	i32 1776026572, ; 128: System.Core.dll => 0x69dc03cc => 41
	i32 1782161461, ; 129: Grpc.Core.Api => 0x6a39a035 => 19
	i32 1788241197, ; 130: Xamarin.AndroidX.Fragment => 0x6a96652d => 80
	i32 1796167890, ; 131: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 24
	i32 1808609942, ; 132: Xamarin.AndroidX.Loader => 0x6bcd3296 => 89
	i32 1813058853, ; 133: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 136
	i32 1813201214, ; 134: Xamarin.Google.Android.Material => 0x6c13413e => 116
	i32 1828688058, ; 135: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 27
	i32 1867746548, ; 136: Xamarin.Essentials.dll => 0x6f538cf4 => 106
	i32 1875053220, ; 137: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 109
	i32 1885316902, ; 138: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 61
	i32 1900519031, ; 139: Grpc.Auth.dll => 0x71479e77 => 18
	i32 1908813208, ; 140: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 123
	i32 1919157823, ; 141: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 91
	i32 1983156543, ; 142: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 135
	i32 2011961780, ; 143: System.Buffers.dll => 0x77ec19b4 => 39
	i32 2019465201, ; 144: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 87
	i32 2055257422, ; 145: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 84
	i32 2079903147, ; 146: System.Runtime.dll => 0x7bf8cdab => 51
	i32 2083657273, ; 147: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 115
	i32 2090596640, ; 148: System.Numerics.Vectors => 0x7c9bf920 => 49
	i32 2103459038, ; 149: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 34
	i32 2129483829, ; 150: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 122
	i32 2174878672, ; 151: Xamarin.Firebase.Annotations => 0x81a203d0 => 107
	i32 2192057212, ; 152: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 27
	i32 2195564014, ; 153: Xamarin.Grpc.Context => 0x82dda5ee => 127
	i32 2201107256, ; 154: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 140
	i32 2201231467, ; 155: System.Net.Http => 0x8334206b => 47
	i32 2217644978, ; 156: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 100
	i32 2244775296, ; 157: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 90
	i32 2256548716, ; 158: Xamarin.AndroidX.MultiDex => 0x8680336c => 91
	i32 2279755925, ; 159: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 94
	i32 2315684594, ; 160: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 56
	i32 2390616037, ; 161: Xamarin.Android.Support.Exif => 0x8e7de7e5 => 54
	i32 2397347608, ; 162: Google.LongRunning.dll => 0x8ee49f18 => 15
	i32 2403452196, ; 163: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 77
	i32 2441199521, ; 164: Google.Cloud.Firestore => 0x9181bfa1 => 12
	i32 2465273461, ; 165: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 31
	i32 2465532216, ; 166: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 66
	i32 2471841756, ; 167: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 168: Java.Interop.dll => 0x93918882 => 22
	i32 2486847491, ; 169: Google.Api.Gax => 0x943a4803 => 6
	i32 2501346920, ; 170: System.Data.DataSetExtensions => 0x95178668 => 142
	i32 2505896520, ; 171: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 86
	i32 2581819634, ; 172: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 101
	i32 2591433303, ; 173: Xamarin.Grpc.Core.dll => 0x9a762257 => 128
	i32 2605712449, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 140
	i32 2620871830, ; 175: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 71
	i32 2624644809, ; 176: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 76
	i32 2635732976, ; 177: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 12
	i32 2640452924, ; 178: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 130
	i32 2652665316, ; 179: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x9e1c75e4 => 105
	i32 2701096212, ; 180: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 98
	i32 2715831284, ; 181: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 115
	i32 2732626843, ; 182: Xamarin.AndroidX.Activity => 0xa2e0939b => 55
	i32 2737747696, ; 183: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 58
	i32 2744327253, ; 184: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 7
	i32 2752363754, ; 185: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 114
	i32 2757554483, ; 186: Google.Api.Gax.Grpc => 0xa45cf133 => 7
	i32 2765528135, ; 187: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0xa4d69c47 => 132
	i32 2770495804, ; 188: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 134
	i32 2778768386, ; 189: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 103
	i32 2779977773, ; 190: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 95
	i32 2793853378, ; 191: Square.Picasso.dll => 0xa686d1c2 => 38
	i32 2799649579, ; 192: Xamarin.Protobuf.JavaLite.dll => 0xa6df432b => 141
	i32 2804607052, ; 193: Xamarin.Firebase.Components.dll => 0xa72ae84c => 111
	i32 2810250172, ; 194: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 68
	i32 2818335264, ; 195: System.Linq.Async => 0xa7fc6220 => 45
	i32 2819470561, ; 196: System.Xml.dll => 0xa80db4e1 => 52
	i32 2821294376, ; 197: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 95
	i32 2839679515, ; 198: Google.LongRunning => 0xa942121b => 15
	i32 2847418871, ; 199: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 122
	i32 2853208004, ; 200: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 103
	i32 2853863323, ; 201: TestQuest => 0xaa1a7f9b => 0
	i32 2855708567, ; 202: Xamarin.AndroidX.Transition => 0xaa36a797 => 99
	i32 2856624150, ; 203: Xamarin.Grpc.Core => 0xaa44a016 => 128
	i32 2870458124, ; 204: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 108
	i32 2875164099, ; 205: Jsr305Binding.dll => 0xab5f85c3 => 23
	i32 2884993177, ; 206: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 79
	i32 2886449589, ; 207: TestQuest.dll => 0xac0bb9b5 => 0
	i32 2893550578, ; 208: Google.Apis.Core => 0xac7813f2 => 10
	i32 2901442782, ; 209: System.Reflection => 0xacf080de => 153
	i32 2903344695, ; 210: System.ComponentModel.Composition => 0xad0d8637 => 146
	i32 2905242038, ; 211: mscorlib.dll => 0xad2a79b6 => 29
	i32 2912646636, ; 212: Google.Api.CommonProtos => 0xad9b75ec => 5
	i32 2916838712, ; 213: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 104
	i32 2919462931, ; 214: System.Numerics.Vectors.dll => 0xae037813 => 49
	i32 2921128767, ; 215: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 57
	i32 2943219317, ; 216: Square.OkIO => 0xaf6df675 => 36
	i32 2960379616, ; 217: Xamarin.Google.Guava => 0xb073cee0 => 118
	i32 2978675010, ; 218: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 75
	i32 2990604888, ; 219: Google.Apis => 0xb2410258 => 11
	i32 2996846495, ; 220: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 85
	i32 3016983068, ; 221: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 97
	i32 3024354802, ; 222: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 82
	i32 3058099980, ; 223: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 124
	i32 3071899978, ; 224: Xamarin.Firebase.Common.dll => 0xb719794a => 110
	i32 3106263381, ; 225: Grpc.Net.Common.dll => 0xb925d155 => 21
	i32 3111772706, ; 226: System.Runtime.Serialization => 0xb979e222 => 147
	i32 3130021562, ; 227: Google.Apis.Auth.PlatformServices.dll => 0xba9056ba => 9
	i32 3147165239, ; 228: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 152
	i32 3148237826, ; 229: GoogleGson.dll => 0xbba64c02 => 17
	i32 3203277885, ; 230: Google.Api.Gax.dll => 0xbeee243d => 6
	i32 3204380047, ; 231: System.Data.dll => 0xbefef58f => 42
	i32 3211777861, ; 232: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 74
	i32 3217536604, ; 233: Square.OkHttp3.dll => 0xbfc7b65c => 35
	i32 3220365878, ; 234: System.Threading => 0xbff2e236 => 3
	i32 3222740722, ; 235: Xamarin.Protobuf.JavaLite => 0xc0171ef2 => 141
	i32 3230271625, ; 236: Square.OkIO.JVM => 0xc08a0889 => 37
	i32 3230466174, ; 237: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 123
	i32 3247949154, ; 238: Mono.Security => 0xc197c562 => 155
	i32 3258312781, ; 239: Xamarin.AndroidX.CardView => 0xc235e84d => 63
	i32 3317135071, ; 240: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 72
	i32 3317144872, ; 241: System.Data => 0xc5b79d28 => 42
	i32 3340431453, ; 242: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 61
	i32 3345895724, ; 243: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 93
	i32 3360279109, ; 244: SQLitePCLRaw.core => 0xc849ca45 => 32
	i32 3362522851, ; 245: Xamarin.AndroidX.Core => 0xc86c06e3 => 70
	i32 3366347497, ; 246: Java.Interop => 0xc8a662e9 => 22
	i32 3374999561, ; 247: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 94
	i32 3395150330, ; 248: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 50
	i32 3404865022, ; 249: System.ServiceModel.Internals => 0xcaf21dfe => 148
	i32 3405233483, ; 250: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 73
	i32 3429136800, ; 251: System.Xml => 0xcc6479a0 => 52
	i32 3430777524, ; 252: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 253: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 53
	i32 3441283291, ; 254: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 76
	i32 3453592554, ; 255: Google.Apis.Core.dll => 0xcdd9a3ea => 10
	i32 3473879593, ; 256: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 129
	i32 3476120550, ; 257: Mono.Android => 0xcf3163e6 => 28
	i32 3479776177, ; 258: Square.Picasso => 0xcf692bb1 => 38
	i32 3486566296, ; 259: System.Transactions => 0xcfd0c798 => 149
	i32 3493954962, ; 260: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 65
	i32 3499097210, ; 261: Google.Protobuf.dll => 0xd08ffc7a => 16
	i32 3509114376, ; 262: System.Xml.Linq => 0xd128d608 => 151
	i32 3567349600, ; 263: System.ComponentModel.Composition.dll => 0xd4a16f60 => 146
	i32 3597794883, ; 264: Xamarin.Firebase.Firestore => 0xd671fe43 => 114
	i32 3598063517, ; 265: Google.Cloud.Firestore.V1 => 0xd676179d => 13
	i32 3619593299, ; 266: Xamarin.Firebase.Database.dll => 0xd7be9c53 => 113
	i32 3627220390, ; 267: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 92
	i32 3633644679, ; 268: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 57
	i32 3641597786, ; 269: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 84
	i32 3645630983, ; 270: Google.Protobuf => 0xd94bea07 => 16
	i32 3672681054, ; 271: Mono.Android.dll => 0xdae8aa5e => 28
	i32 3676310014, ; 272: System.Web.Services.dll => 0xdb2009fe => 150
	i32 3682565725, ; 273: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 62
	i32 3684561358, ; 274: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 65
	i32 3689375977, ; 275: System.Drawing.Common => 0xdbe768e9 => 143
	i32 3706696989, ; 276: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 69
	i32 3718780102, ; 277: Xamarin.AndroidX.Annotation => 0xdda814c6 => 56
	i32 3748608112, ; 278: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 43
	i32 3754567612, ; 279: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 34
	i32 3757995660, ; 280: Google.Cloud.Location.dll => 0xdffe768c => 14
	i32 3786282454, ; 281: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 64
	i32 3793997468, ; 282: Google.Apis.Auth.dll => 0xe223ce9c => 8
	i32 3829621856, ; 283: System.Numerics.dll => 0xe4436460 => 48
	i32 3841636137, ; 284: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3885922214, ; 285: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 99
	i32 3888767677, ; 286: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 93
	i32 3896760992, ; 287: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 70
	i32 3920810846, ; 288: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 145
	i32 3921031405, ; 289: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 102
	i32 3934056515, ; 290: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 133
	i32 3943739589, ; 291: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 127
	i32 3945713374, ; 292: System.Data.DataSetExtensions.dll => 0xeb2ecede => 142
	i32 3955647286, ; 293: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 59
	i32 3959773229, ; 294: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 85
	i32 3970018735, ; 295: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 124
	i32 4025784931, ; 296: System.Memory => 0xeff49a63 => 46
	i32 4056144661, ; 297: Google.Cloud.Location => 0xf1c3db15 => 14
	i32 4059682726, ; 298: Google.Apis.dll => 0xf1f9d7a6 => 11
	i32 4073602200, ; 299: System.Threading.dll => 0xf2ce3c98 => 3
	i32 4082882467, ; 300: Google.Apis.Auth => 0xf35bd7a3 => 8
	i32 4101593132, ; 301: Xamarin.AndroidX.Emoji2 => 0xf479582c => 77
	i32 4105002889, ; 302: Mono.Security.dll => 0xf4ad5f89 => 155
	i32 4151237749, ; 303: System.Core => 0xf76edc75 => 41
	i32 4182413190, ; 304: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 88
	i32 4213026141, ; 305: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 43
	i32 4223148364, ; 306: Xamarin.Grpc.Android.dll => 0xfbb8214c => 125
	i32 4256097574, ; 307: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 69
	i32 4260525087, ; 308: System.Buffers => 0xfdf2741f => 39
	i32 4284549794, ; 309: Xamarin.Firebase.Components => 0xff610aa2 => 111
	i32 4292120959, ; 310: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 88
	i32 4294763496 ; 311: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 79
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [312 x i32] [
	i32 130, i32 125, i32 86, i32 120, i32 30, i32 107, i32 137, i32 64, ; 0..7
	i32 113, i32 62, i32 4, i32 121, i32 82, i32 150, i32 67, i32 119, ; 8..15
	i32 129, i32 81, i32 55, i32 48, i32 54, i32 83, i32 33, i32 21, ; 16..23
	i32 19, i32 46, i32 20, i32 66, i32 106, i32 2, i32 80, i32 112, ; 24..31
	i32 29, i32 44, i32 81, i32 90, i32 108, i32 149, i32 137, i32 154, ; 32..39
	i32 24, i32 23, i32 145, i32 72, i32 78, i32 13, i32 102, i32 60, ; 40..47
	i32 151, i32 139, i32 53, i32 134, i32 126, i32 37, i32 138, i32 31, ; 48..55
	i32 144, i32 73, i32 143, i32 92, i32 120, i32 30, i32 138, i32 36, ; 56..63
	i32 83, i32 152, i32 2, i32 96, i32 26, i32 117, i32 59, i32 5, ; 64..71
	i32 87, i32 17, i32 136, i32 44, i32 105, i32 45, i32 131, i32 100, ; 72..79
	i32 20, i32 60, i32 35, i32 131, i32 118, i32 97, i32 101, i32 139, ; 80..87
	i32 32, i32 75, i32 132, i32 110, i32 148, i32 96, i32 133, i32 68, ; 88..95
	i32 119, i32 50, i32 109, i32 18, i32 154, i32 40, i32 144, i32 58, ; 96..103
	i32 40, i32 25, i32 126, i32 9, i32 74, i32 147, i32 117, i32 89, ; 104..111
	i32 104, i32 78, i32 71, i32 47, i32 51, i32 98, i32 116, i32 112, ; 112..119
	i32 67, i32 25, i32 135, i32 4, i32 33, i32 153, i32 63, i32 121, ; 120..127
	i32 41, i32 19, i32 80, i32 24, i32 89, i32 136, i32 116, i32 27, ; 128..135
	i32 106, i32 109, i32 61, i32 18, i32 123, i32 91, i32 135, i32 39, ; 136..143
	i32 87, i32 84, i32 51, i32 115, i32 49, i32 34, i32 122, i32 107, ; 144..151
	i32 27, i32 127, i32 140, i32 47, i32 100, i32 90, i32 91, i32 94, ; 152..159
	i32 56, i32 54, i32 15, i32 77, i32 12, i32 31, i32 66, i32 1, ; 160..167
	i32 22, i32 6, i32 142, i32 86, i32 101, i32 128, i32 140, i32 71, ; 168..175
	i32 76, i32 12, i32 130, i32 105, i32 98, i32 115, i32 55, i32 58, ; 176..183
	i32 7, i32 114, i32 7, i32 132, i32 134, i32 103, i32 95, i32 38, ; 184..191
	i32 141, i32 111, i32 68, i32 45, i32 52, i32 95, i32 15, i32 122, ; 192..199
	i32 103, i32 0, i32 99, i32 128, i32 108, i32 23, i32 79, i32 0, ; 200..207
	i32 10, i32 153, i32 146, i32 29, i32 5, i32 104, i32 49, i32 57, ; 208..215
	i32 36, i32 118, i32 75, i32 11, i32 85, i32 97, i32 82, i32 124, ; 216..223
	i32 110, i32 21, i32 147, i32 9, i32 152, i32 17, i32 6, i32 42, ; 224..231
	i32 74, i32 35, i32 3, i32 141, i32 37, i32 123, i32 155, i32 63, ; 232..239
	i32 72, i32 42, i32 61, i32 93, i32 32, i32 70, i32 22, i32 94, ; 240..247
	i32 50, i32 148, i32 73, i32 52, i32 1, i32 53, i32 76, i32 10, ; 248..255
	i32 129, i32 28, i32 38, i32 149, i32 65, i32 16, i32 151, i32 146, ; 256..263
	i32 114, i32 13, i32 113, i32 92, i32 57, i32 84, i32 16, i32 28, ; 264..271
	i32 150, i32 62, i32 65, i32 143, i32 69, i32 56, i32 43, i32 34, ; 272..279
	i32 14, i32 64, i32 8, i32 48, i32 26, i32 99, i32 93, i32 70, ; 280..287
	i32 145, i32 102, i32 133, i32 127, i32 142, i32 59, i32 85, i32 124, ; 288..295
	i32 46, i32 14, i32 11, i32 3, i32 8, i32 77, i32 155, i32 41, ; 296..303
	i32 88, i32 43, i32 125, i32 69, i32 39, i32 111, i32 88, i32 79 ; 312..311
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

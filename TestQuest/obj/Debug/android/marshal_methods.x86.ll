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
@assembly_image_cache_hashes = local_unnamed_addr constant [302 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 125
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 120
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 81
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 115
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 30
	i32 103834273, ; 5: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 102
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 132
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 60
	i32 201929280, ; 8: Xamarin.Firebase.Database => 0xc093240 => 108
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 58
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 227054016, ; 11: Xamarin.GoogleAndroid.Annotations.dll => 0xd8891c0 => 116
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 77
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 145
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 63
	i32 266337479, ; 15: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 114
	i32 271099684, ; 16: Xamarin.Grpc.OkHttp => 0x1028a724 => 124
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 76
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 51
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 46
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 78
	i32 347068432, ; 21: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 33
	i32 364956269, ; 22: Grpc.Net.Common => 0x15c0ca6d => 21
	i32 371306672, ; 23: Grpc.Core.Api.dll => 0x1621b0b0 => 19
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 44
	i32 391886110, ; 25: Grpc.Net.Client.dll => 0x175bb51e => 20
	i32 441335492, ; 26: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 62
	i32 442521989, ; 27: Xamarin.Essentials => 0x1a605985 => 101
	i32 442565967, ; 28: System.Collections => 0x1a61054f => 2
	i32 450948140, ; 29: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 75
	i32 453011810, ; 30: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 107
	i32 465846621, ; 31: mscorlib => 0x1bc4415d => 29
	i32 469710990, ; 32: System.dll => 0x1bff388e => 42
	i32 476646585, ; 33: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 76
	i32 486930444, ; 34: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 85
	i32 493301629, ; 35: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 103
	i32 526420162, ; 36: System.Transactions.dll => 0x1f6088c2 => 144
	i32 527452488, ; 37: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 132
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 149
	i32 548916678, ; 39: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 24
	i32 557405415, ; 40: Jsr305Binding => 0x213954e7 => 23
	i32 605376203, ; 41: System.IO.Compression.FileSystem => 0x24154ecb => 140
	i32 627609679, ; 42: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 639843206, ; 43: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 74
	i32 646990296, ; 44: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 13
	i32 663517072, ; 45: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 97
	i32 666292255, ; 46: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 56
	i32 690569205, ; 47: System.Xml.Linq.dll => 0x29293ff5 => 146
	i32 691348768, ; 48: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 134
	i32 700284507, ; 49: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 129
	i32 712915335, ; 50: Xamarin.Grpc.Api => 0x2a7e3987 => 121
	i32 714456728, ; 51: Square.OkIO.JVM.dll => 0x2a95be98 => 36
	i32 720511267, ; 52: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 133
	i32 748832960, ; 53: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 31
	i32 775507847, ; 54: System.IO.Compression => 0x2e394f87 => 139
	i32 790371945, ; 55: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 69
	i32 809851609, ; 56: System.Drawing.Common.dll => 0x30455ad9 => 138
	i32 843511501, ; 57: Xamarin.AndroidX.Print => 0x3246f6cd => 87
	i32 928116545, ; 58: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 115
	i32 955402788, ; 59: Newtonsoft.Json => 0x38f24a24 => 30
	i32 956575887, ; 60: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 133
	i32 961995525, ; 61: Square.OkIO.dll => 0x3956e305 => 35
	i32 967690846, ; 62: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 78
	i32 975236339, ; 63: System.Diagnostics.Tracing => 0x3a20ecf3 => 147
	i32 992768348, ; 64: System.Collections.dll => 0x3b2c715c => 2
	i32 1012816738, ; 65: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 91
	i32 1028951442, ; 66: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 26
	i32 1031528504, ; 67: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 112
	i32 1035644815, ; 68: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 55
	i32 1049751285, ; 69: Google.Api.CommonProtos.dll => 0x3e91eef5 => 5
	i32 1052210849, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 82
	i32 1067306892, ; 71: GoogleGson => 0x3f9dcf8c => 17
	i32 1084122840, ; 72: Xamarin.Kotlin.StdLib => 0x409e66d8 => 131
	i32 1098259244, ; 73: System => 0x41761b2c => 42
	i32 1111591002, ; 74: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x4241885a => 100
	i32 1145085672, ; 75: System.Linq.Async.dll => 0x44409ee8 => 43
	i32 1159499262, ; 76: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 126
	i32 1175144683, ; 77: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 95
	i32 1203173028, ; 78: Grpc.Net.Client => 0x47b6f6a4 => 20
	i32 1204270330, ; 79: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 56
	i32 1230765884, ; 80: Xamarin.Grpc.Stub => 0x495bff3c => 126
	i32 1263886435, ; 81: Xamarin.Google.Guava.dll => 0x4b556063 => 113
	i32 1264511973, ; 82: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 92
	i32 1267360935, ; 83: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 96
	i32 1275534314, ; 84: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 134
	i32 1292207520, ; 85: SQLitePCLRaw.core.dll => 0x4d0585a0 => 32
	i32 1293217323, ; 86: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 71
	i32 1316849161, ; 87: Xamarin.Io.PerfMark.PerfMarkApi => 0x4e7d8609 => 127
	i32 1333047053, ; 88: Xamarin.Firebase.Common => 0x4f74af0d => 105
	i32 1365406463, ; 89: System.ServiceModel.Internals.dll => 0x516272ff => 143
	i32 1376866003, ; 90: Xamarin.AndroidX.SavedState => 0x52114ed3 => 91
	i32 1379897097, ; 91: Xamarin.JavaX.Inject => 0x523f8f09 => 128
	i32 1406073936, ; 92: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1406299041, ; 93: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 114
	i32 1411638395, ; 94: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 48
	i32 1411702249, ; 95: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 104
	i32 1437713837, ; 96: Grpc.Auth => 0x55b1c5ad => 18
	i32 1457743152, ; 97: System.Runtime.Extensions.dll => 0x56e36530 => 149
	i32 1461234159, ; 98: System.Collections.Immutable.dll => 0x5718a9ef => 38
	i32 1462112819, ; 99: System.IO.Compression.dll => 0x57261233 => 139
	i32 1469204771, ; 100: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 54
	i32 1479771757, ; 101: System.Collections.Immutable => 0x5833866d => 38
	i32 1490351284, ; 102: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 25
	i32 1544135863, ; 103: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 121
	i32 1580996379, ; 104: Google.Apis.Auth.PlatformServices => 0x5e3c171b => 9
	i32 1582372066, ; 105: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 70
	i32 1592978981, ; 106: System.Runtime.Serialization.dll => 0x5ef2ee25 => 142
	i32 1597949149, ; 107: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 112
	i32 1622152042, ; 108: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 84
	i32 1624863272, ; 109: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 99
	i32 1635184631, ; 110: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 74
	i32 1636350590, ; 111: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 112: System.Net.Http.dll => 0x61b9038d => 45
	i32 1657153582, ; 113: System.Runtime => 0x62c6282e => 49
	i32 1658241508, ; 114: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 93
	i32 1658251792, ; 115: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 111
	i32 1664238415, ; 116: Xamarin.Firebase.Database.Collection => 0x6332434f => 107
	i32 1670060433, ; 117: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 63
	i32 1688112883, ; 118: Microsoft.Data.Sqlite => 0x649e8ef3 => 25
	i32 1698840827, ; 119: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 130
	i32 1701541528, ; 120: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1711441057, ; 121: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 33
	i32 1726116996, ; 122: System.Reflection.dll => 0x66e27484 => 148
	i32 1729485958, ; 123: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 59
	i32 1748729059, ; 124: Xamarin.GoogleAndroid.Annotations => 0x683b7ce3 => 116
	i32 1776026572, ; 125: System.Core.dll => 0x69dc03cc => 39
	i32 1782161461, ; 126: Grpc.Core.Api => 0x6a39a035 => 19
	i32 1788241197, ; 127: Xamarin.AndroidX.Fragment => 0x6a96652d => 75
	i32 1796167890, ; 128: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 24
	i32 1808609942, ; 129: Xamarin.AndroidX.Loader => 0x6bcd3296 => 84
	i32 1813058853, ; 130: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 131
	i32 1813201214, ; 131: Xamarin.Google.Android.Material => 0x6c13413e => 111
	i32 1828688058, ; 132: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 27
	i32 1867746548, ; 133: Xamarin.Essentials.dll => 0x6f538cf4 => 101
	i32 1875053220, ; 134: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 104
	i32 1885316902, ; 135: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 57
	i32 1900519031, ; 136: Grpc.Auth.dll => 0x71479e77 => 18
	i32 1908813208, ; 137: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 118
	i32 1919157823, ; 138: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 86
	i32 1983156543, ; 139: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 130
	i32 2011961780, ; 140: System.Buffers.dll => 0x77ec19b4 => 37
	i32 2019465201, ; 141: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 82
	i32 2055257422, ; 142: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 79
	i32 2079903147, ; 143: System.Runtime.dll => 0x7bf8cdab => 49
	i32 2083657273, ; 144: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 110
	i32 2090596640, ; 145: System.Numerics.Vectors => 0x7c9bf920 => 47
	i32 2103459038, ; 146: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 34
	i32 2129483829, ; 147: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 117
	i32 2174878672, ; 148: Xamarin.Firebase.Annotations => 0x81a203d0 => 102
	i32 2192057212, ; 149: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 27
	i32 2195564014, ; 150: Xamarin.Grpc.Context => 0x82dda5ee => 122
	i32 2201107256, ; 151: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 135
	i32 2201231467, ; 152: System.Net.Http => 0x8334206b => 45
	i32 2217644978, ; 153: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 95
	i32 2244775296, ; 154: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 85
	i32 2256548716, ; 155: Xamarin.AndroidX.MultiDex => 0x8680336c => 86
	i32 2279755925, ; 156: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 89
	i32 2315684594, ; 157: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 52
	i32 2397347608, ; 158: Google.LongRunning.dll => 0x8ee49f18 => 15
	i32 2403452196, ; 159: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 73
	i32 2441199521, ; 160: Google.Cloud.Firestore => 0x9181bfa1 => 12
	i32 2465273461, ; 161: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 31
	i32 2465532216, ; 162: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 62
	i32 2471841756, ; 163: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 164: Java.Interop.dll => 0x93918882 => 22
	i32 2486847491, ; 165: Google.Api.Gax => 0x943a4803 => 6
	i32 2501346920, ; 166: System.Data.DataSetExtensions => 0x95178668 => 137
	i32 2505896520, ; 167: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 81
	i32 2581819634, ; 168: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 96
	i32 2591433303, ; 169: Xamarin.Grpc.Core.dll => 0x9a762257 => 123
	i32 2605712449, ; 170: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 135
	i32 2620871830, ; 171: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2624644809, ; 172: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 72
	i32 2635732976, ; 173: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 12
	i32 2640452924, ; 174: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 125
	i32 2652665316, ; 175: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x9e1c75e4 => 100
	i32 2701096212, ; 176: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 93
	i32 2715831284, ; 177: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 110
	i32 2732626843, ; 178: Xamarin.AndroidX.Activity => 0xa2e0939b => 51
	i32 2737747696, ; 179: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 54
	i32 2744327253, ; 180: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 7
	i32 2752363754, ; 181: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 109
	i32 2757554483, ; 182: Google.Api.Gax.Grpc => 0xa45cf133 => 7
	i32 2765528135, ; 183: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0xa4d69c47 => 127
	i32 2770495804, ; 184: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 129
	i32 2778768386, ; 185: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 98
	i32 2779977773, ; 186: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 90
	i32 2799649579, ; 187: Xamarin.Protobuf.JavaLite.dll => 0xa6df432b => 136
	i32 2804607052, ; 188: Xamarin.Firebase.Components.dll => 0xa72ae84c => 106
	i32 2810250172, ; 189: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2818335264, ; 190: System.Linq.Async => 0xa7fc6220 => 43
	i32 2819470561, ; 191: System.Xml.dll => 0xa80db4e1 => 50
	i32 2821294376, ; 192: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 90
	i32 2839679515, ; 193: Google.LongRunning => 0xa942121b => 15
	i32 2847418871, ; 194: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 117
	i32 2853208004, ; 195: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 98
	i32 2853863323, ; 196: TestQuest => 0xaa1a7f9b => 0
	i32 2855708567, ; 197: Xamarin.AndroidX.Transition => 0xaa36a797 => 94
	i32 2856624150, ; 198: Xamarin.Grpc.Core => 0xaa44a016 => 123
	i32 2870458124, ; 199: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 103
	i32 2875164099, ; 200: Jsr305Binding.dll => 0xab5f85c3 => 23
	i32 2886449589, ; 201: TestQuest.dll => 0xac0bb9b5 => 0
	i32 2893550578, ; 202: Google.Apis.Core => 0xac7813f2 => 10
	i32 2901442782, ; 203: System.Reflection => 0xacf080de => 148
	i32 2903344695, ; 204: System.ComponentModel.Composition => 0xad0d8637 => 141
	i32 2905242038, ; 205: mscorlib.dll => 0xad2a79b6 => 29
	i32 2912646636, ; 206: Google.Api.CommonProtos => 0xad9b75ec => 5
	i32 2916838712, ; 207: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 99
	i32 2919462931, ; 208: System.Numerics.Vectors.dll => 0xae037813 => 47
	i32 2921128767, ; 209: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 53
	i32 2943219317, ; 210: Square.OkIO => 0xaf6df675 => 35
	i32 2960379616, ; 211: Xamarin.Google.Guava => 0xb073cee0 => 113
	i32 2978675010, ; 212: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 71
	i32 2990604888, ; 213: Google.Apis => 0xb2410258 => 11
	i32 2996846495, ; 214: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 80
	i32 3016983068, ; 215: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 92
	i32 3024354802, ; 216: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 77
	i32 3058099980, ; 217: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 119
	i32 3071899978, ; 218: Xamarin.Firebase.Common.dll => 0xb719794a => 105
	i32 3106263381, ; 219: Grpc.Net.Common.dll => 0xb925d155 => 21
	i32 3111772706, ; 220: System.Runtime.Serialization => 0xb979e222 => 142
	i32 3130021562, ; 221: Google.Apis.Auth.PlatformServices.dll => 0xba9056ba => 9
	i32 3147165239, ; 222: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 147
	i32 3148237826, ; 223: GoogleGson.dll => 0xbba64c02 => 17
	i32 3203277885, ; 224: Google.Api.Gax.dll => 0xbeee243d => 6
	i32 3204380047, ; 225: System.Data.dll => 0xbefef58f => 40
	i32 3211777861, ; 226: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 70
	i32 3220365878, ; 227: System.Threading => 0xbff2e236 => 3
	i32 3222740722, ; 228: Xamarin.Protobuf.JavaLite => 0xc0171ef2 => 136
	i32 3230271625, ; 229: Square.OkIO.JVM => 0xc08a0889 => 36
	i32 3230466174, ; 230: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 118
	i32 3247949154, ; 231: Mono.Security => 0xc197c562 => 150
	i32 3258312781, ; 232: Xamarin.AndroidX.CardView => 0xc235e84d => 59
	i32 3317135071, ; 233: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3317144872, ; 234: System.Data => 0xc5b79d28 => 40
	i32 3340431453, ; 235: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 57
	i32 3345895724, ; 236: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 88
	i32 3360279109, ; 237: SQLitePCLRaw.core => 0xc849ca45 => 32
	i32 3362522851, ; 238: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 239: Java.Interop => 0xc8a662e9 => 22
	i32 3374999561, ; 240: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 89
	i32 3395150330, ; 241: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 48
	i32 3404865022, ; 242: System.ServiceModel.Internals => 0xcaf21dfe => 143
	i32 3405233483, ; 243: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 69
	i32 3429136800, ; 244: System.Xml => 0xcc6479a0 => 50
	i32 3430777524, ; 245: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 246: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 72
	i32 3453592554, ; 247: Google.Apis.Core.dll => 0xcdd9a3ea => 10
	i32 3473879593, ; 248: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 124
	i32 3476120550, ; 249: Mono.Android => 0xcf3163e6 => 28
	i32 3486566296, ; 250: System.Transactions => 0xcfd0c798 => 144
	i32 3493954962, ; 251: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 61
	i32 3499097210, ; 252: Google.Protobuf.dll => 0xd08ffc7a => 16
	i32 3509114376, ; 253: System.Xml.Linq => 0xd128d608 => 146
	i32 3567349600, ; 254: System.ComponentModel.Composition.dll => 0xd4a16f60 => 141
	i32 3597794883, ; 255: Xamarin.Firebase.Firestore => 0xd671fe43 => 109
	i32 3598063517, ; 256: Google.Cloud.Firestore.V1 => 0xd676179d => 13
	i32 3619593299, ; 257: Xamarin.Firebase.Database.dll => 0xd7be9c53 => 108
	i32 3627220390, ; 258: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 87
	i32 3633644679, ; 259: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 53
	i32 3641597786, ; 260: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 79
	i32 3645630983, ; 261: Google.Protobuf => 0xd94bea07 => 16
	i32 3672681054, ; 262: Mono.Android.dll => 0xdae8aa5e => 28
	i32 3676310014, ; 263: System.Web.Services.dll => 0xdb2009fe => 145
	i32 3682565725, ; 264: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 58
	i32 3684561358, ; 265: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 61
	i32 3689375977, ; 266: System.Drawing.Common => 0xdbe768e9 => 138
	i32 3706696989, ; 267: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 65
	i32 3718780102, ; 268: Xamarin.AndroidX.Annotation => 0xdda814c6 => 52
	i32 3748608112, ; 269: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 41
	i32 3754567612, ; 270: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 34
	i32 3757995660, ; 271: Google.Cloud.Location.dll => 0xdffe768c => 14
	i32 3786282454, ; 272: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 60
	i32 3793997468, ; 273: Google.Apis.Auth.dll => 0xe223ce9c => 8
	i32 3829621856, ; 274: System.Numerics.dll => 0xe4436460 => 46
	i32 3841636137, ; 275: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 26
	i32 3885922214, ; 276: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 94
	i32 3888767677, ; 277: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 88
	i32 3896760992, ; 278: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3920810846, ; 279: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 140
	i32 3921031405, ; 280: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 97
	i32 3934056515, ; 281: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 128
	i32 3943739589, ; 282: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 122
	i32 3945713374, ; 283: System.Data.DataSetExtensions.dll => 0xeb2ecede => 137
	i32 3955647286, ; 284: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 55
	i32 3959773229, ; 285: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 80
	i32 3970018735, ; 286: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 119
	i32 4025784931, ; 287: System.Memory => 0xeff49a63 => 44
	i32 4056144661, ; 288: Google.Cloud.Location => 0xf1c3db15 => 14
	i32 4059682726, ; 289: Google.Apis.dll => 0xf1f9d7a6 => 11
	i32 4073602200, ; 290: System.Threading.dll => 0xf2ce3c98 => 3
	i32 4082882467, ; 291: Google.Apis.Auth => 0xf35bd7a3 => 8
	i32 4101593132, ; 292: Xamarin.AndroidX.Emoji2 => 0xf479582c => 73
	i32 4105002889, ; 293: Mono.Security.dll => 0xf4ad5f89 => 150
	i32 4151237749, ; 294: System.Core => 0xf76edc75 => 39
	i32 4182413190, ; 295: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 83
	i32 4213026141, ; 296: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 41
	i32 4223148364, ; 297: Xamarin.Grpc.Android.dll => 0xfbb8214c => 120
	i32 4256097574, ; 298: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 65
	i32 4260525087, ; 299: System.Buffers => 0xfdf2741f => 37
	i32 4284549794, ; 300: Xamarin.Firebase.Components => 0xff610aa2 => 106
	i32 4292120959 ; 301: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 83
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [302 x i32] [
	i32 125, i32 120, i32 81, i32 115, i32 30, i32 102, i32 132, i32 60, ; 0..7
	i32 108, i32 58, i32 4, i32 116, i32 77, i32 145, i32 63, i32 114, ; 8..15
	i32 124, i32 76, i32 51, i32 46, i32 78, i32 33, i32 21, i32 19, ; 16..23
	i32 44, i32 20, i32 62, i32 101, i32 2, i32 75, i32 107, i32 29, ; 24..31
	i32 42, i32 76, i32 85, i32 103, i32 144, i32 132, i32 149, i32 24, ; 32..39
	i32 23, i32 140, i32 68, i32 74, i32 13, i32 97, i32 56, i32 146, ; 40..47
	i32 134, i32 129, i32 121, i32 36, i32 133, i32 31, i32 139, i32 69, ; 48..55
	i32 138, i32 87, i32 115, i32 30, i32 133, i32 35, i32 78, i32 147, ; 56..63
	i32 2, i32 91, i32 26, i32 112, i32 55, i32 5, i32 82, i32 17, ; 64..71
	i32 131, i32 42, i32 100, i32 43, i32 126, i32 95, i32 20, i32 56, ; 72..79
	i32 126, i32 113, i32 92, i32 96, i32 134, i32 32, i32 71, i32 127, ; 80..87
	i32 105, i32 143, i32 91, i32 128, i32 64, i32 114, i32 48, i32 104, ; 88..95
	i32 18, i32 149, i32 38, i32 139, i32 54, i32 38, i32 25, i32 121, ; 96..103
	i32 9, i32 70, i32 142, i32 112, i32 84, i32 99, i32 74, i32 67, ; 104..111
	i32 45, i32 49, i32 93, i32 111, i32 107, i32 63, i32 25, i32 130, ; 112..119
	i32 4, i32 33, i32 148, i32 59, i32 116, i32 39, i32 19, i32 75, ; 120..127
	i32 24, i32 84, i32 131, i32 111, i32 27, i32 101, i32 104, i32 57, ; 128..135
	i32 18, i32 118, i32 86, i32 130, i32 37, i32 82, i32 79, i32 49, ; 136..143
	i32 110, i32 47, i32 34, i32 117, i32 102, i32 27, i32 122, i32 135, ; 144..151
	i32 45, i32 95, i32 85, i32 86, i32 89, i32 52, i32 15, i32 73, ; 152..159
	i32 12, i32 31, i32 62, i32 1, i32 22, i32 6, i32 137, i32 81, ; 160..167
	i32 96, i32 123, i32 135, i32 67, i32 72, i32 12, i32 125, i32 100, ; 168..175
	i32 93, i32 110, i32 51, i32 54, i32 7, i32 109, i32 7, i32 127, ; 176..183
	i32 129, i32 98, i32 90, i32 136, i32 106, i32 64, i32 43, i32 50, ; 184..191
	i32 90, i32 15, i32 117, i32 98, i32 0, i32 94, i32 123, i32 103, ; 192..199
	i32 23, i32 0, i32 10, i32 148, i32 141, i32 29, i32 5, i32 99, ; 200..207
	i32 47, i32 53, i32 35, i32 113, i32 71, i32 11, i32 80, i32 92, ; 208..215
	i32 77, i32 119, i32 105, i32 21, i32 142, i32 9, i32 147, i32 17, ; 216..223
	i32 6, i32 40, i32 70, i32 3, i32 136, i32 36, i32 118, i32 150, ; 224..231
	i32 59, i32 68, i32 40, i32 57, i32 88, i32 32, i32 66, i32 22, ; 232..239
	i32 89, i32 48, i32 143, i32 69, i32 50, i32 1, i32 72, i32 10, ; 240..247
	i32 124, i32 28, i32 144, i32 61, i32 16, i32 146, i32 141, i32 109, ; 248..255
	i32 13, i32 108, i32 87, i32 53, i32 79, i32 16, i32 28, i32 145, ; 256..263
	i32 58, i32 61, i32 138, i32 65, i32 52, i32 41, i32 34, i32 14, ; 264..271
	i32 60, i32 8, i32 46, i32 26, i32 94, i32 88, i32 66, i32 140, ; 272..279
	i32 97, i32 128, i32 122, i32 137, i32 55, i32 80, i32 119, i32 44, ; 280..287
	i32 14, i32 11, i32 3, i32 8, i32 73, i32 150, i32 39, i32 83, ; 288..295
	i32 41, i32 120, i32 65, i32 37, i32 106, i32 83 ; 296..301
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

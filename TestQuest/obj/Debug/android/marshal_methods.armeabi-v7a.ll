; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [292 x i32] [
	i32 6657927, ; 0: Xamarin.Grpc.Protobuf.Lite.dll => 0x659787 => 119
	i32 9414545, ; 1: Xamarin.Grpc.Android => 0x8fa791 => 114
	i32 32687329, ; 2: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 75
	i32 34715100, ; 3: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 109
	i32 39109920, ; 4: Newtonsoft.Json.dll => 0x254c520 => 29
	i32 103834273, ; 5: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 96
	i32 134690465, ; 6: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 126
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 201929280, ; 8: Xamarin.Firebase.Database => 0xc093240 => 102
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 52
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 4
	i32 227054016, ; 11: Xamarin.GoogleAndroid.Annotations.dll => 0xd8891c0 => 110
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 71
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 140
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 57
	i32 266337479, ; 15: Xamarin.Google.Guava.FailureAccess.dll => 0xfdffcc7 => 108
	i32 271099684, ; 16: Xamarin.Grpc.OkHttp => 0x1028a724 => 118
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 70
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 45
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 40
	i32 342366114, ; 20: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 72
	i32 364956269, ; 21: Grpc.Net.Common => 0x15c0ca6d => 21
	i32 371306672, ; 22: Grpc.Core.Api.dll => 0x1621b0b0 => 19
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 38
	i32 391886110, ; 24: Grpc.Net.Client.dll => 0x175bb51e => 20
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 56
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 95
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 2
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 69
	i32 453011810, ; 29: Xamarin.Firebase.Database.Collection.dll => 0x1b006962 => 101
	i32 465846621, ; 30: mscorlib => 0x1bc4415d => 28
	i32 469710990, ; 31: System.dll => 0x1bff388e => 36
	i32 476646585, ; 32: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 70
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 79
	i32 493301629, ; 34: Xamarin.Firebase.AppCheck.Interop.dll => 0x1d672f7d => 97
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 132
	i32 527452488, ; 36: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 126
	i32 545304856, ; 37: System.Runtime.Extensions => 0x2080b118 => 144
	i32 548916678, ; 38: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 24
	i32 557405415, ; 39: Jsr305Binding => 0x213954e7 => 23
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 136
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 62
	i32 639843206, ; 42: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 68
	i32 646990296, ; 43: Google.Cloud.Firestore.V1.dll => 0x269049d8 => 13
	i32 663517072, ; 44: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 91
	i32 666292255, ; 45: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 50
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 141
	i32 691348768, ; 47: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 128
	i32 700284507, ; 48: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 123
	i32 712915335, ; 49: Xamarin.Grpc.Api => 0x2a7e3987 => 115
	i32 714456728, ; 50: Square.OkIO.JVM.dll => 0x2a95be98 => 31
	i32 720511267, ; 51: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 127
	i32 775507847, ; 52: System.IO.Compression => 0x2e394f87 => 135
	i32 790371945, ; 53: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 63
	i32 809851609, ; 54: System.Drawing.Common.dll => 0x30455ad9 => 134
	i32 843511501, ; 55: Xamarin.AndroidX.Print => 0x3246f6cd => 81
	i32 928116545, ; 56: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 109
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 29
	i32 956575887, ; 58: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 127
	i32 961995525, ; 59: Square.OkIO.dll => 0x3956e305 => 30
	i32 967690846, ; 60: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 72
	i32 975236339, ; 61: System.Diagnostics.Tracing => 0x3a20ecf3 => 142
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 2
	i32 1012816738, ; 63: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1028951442, ; 64: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 25
	i32 1031528504, ; 65: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 106
	i32 1035644815, ; 66: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 49
	i32 1049751285, ; 67: Google.Api.CommonProtos.dll => 0x3e91eef5 => 5
	i32 1052210849, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 76
	i32 1067306892, ; 69: GoogleGson => 0x3f9dcf8c => 17
	i32 1084122840, ; 70: Xamarin.Kotlin.StdLib => 0x409e66d8 => 125
	i32 1098259244, ; 71: System => 0x41761b2c => 36
	i32 1111591002, ; 72: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations => 0x4241885a => 94
	i32 1145085672, ; 73: System.Linq.Async.dll => 0x44409ee8 => 37
	i32 1159499262, ; 74: Xamarin.Grpc.Stub.dll => 0x451c8dfe => 120
	i32 1175144683, ; 75: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 89
	i32 1203173028, ; 76: Grpc.Net.Client => 0x47b6f6a4 => 20
	i32 1204270330, ; 77: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 50
	i32 1230765884, ; 78: Xamarin.Grpc.Stub => 0x495bff3c => 120
	i32 1263886435, ; 79: Xamarin.Google.Guava.dll => 0x4b556063 => 107
	i32 1264511973, ; 80: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 86
	i32 1267360935, ; 81: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 90
	i32 1275534314, ; 82: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 128
	i32 1293217323, ; 83: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 65
	i32 1316849161, ; 84: Xamarin.Io.PerfMark.PerfMarkApi => 0x4e7d8609 => 121
	i32 1333047053, ; 85: Xamarin.Firebase.Common => 0x4f74af0d => 99
	i32 1365406463, ; 86: System.ServiceModel.Internals.dll => 0x516272ff => 139
	i32 1376866003, ; 87: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1379897097, ; 88: Xamarin.JavaX.Inject => 0x523f8f09 => 122
	i32 1406073936, ; 89: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 58
	i32 1406299041, ; 90: Xamarin.Google.Guava.FailureAccess => 0x53d26ba1 => 108
	i32 1411638395, ; 91: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 42
	i32 1411702249, ; 92: Xamarin.Firebase.Auth.Interop.dll => 0x5424dde9 => 98
	i32 1437713837, ; 93: Grpc.Auth => 0x55b1c5ad => 18
	i32 1457743152, ; 94: System.Runtime.Extensions.dll => 0x56e36530 => 144
	i32 1461234159, ; 95: System.Collections.Immutable.dll => 0x5718a9ef => 33
	i32 1462112819, ; 96: System.IO.Compression.dll => 0x57261233 => 135
	i32 1469204771, ; 97: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 48
	i32 1479771757, ; 98: System.Collections.Immutable => 0x5833866d => 33
	i32 1544135863, ; 99: Xamarin.Grpc.Api.dll => 0x5c09a4b7 => 115
	i32 1580996379, ; 100: Google.Apis.Auth.PlatformServices => 0x5e3c171b => 9
	i32 1582372066, ; 101: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 64
	i32 1592978981, ; 102: System.Runtime.Serialization.dll => 0x5ef2ee25 => 138
	i32 1597949149, ; 103: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 106
	i32 1622152042, ; 104: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 78
	i32 1624863272, ; 105: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 93
	i32 1635184631, ; 106: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 68
	i32 1636350590, ; 107: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 61
	i32 1639515021, ; 108: System.Net.Http.dll => 0x61b9038d => 39
	i32 1657153582, ; 109: System.Runtime => 0x62c6282e => 43
	i32 1658241508, ; 110: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 87
	i32 1658251792, ; 111: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 105
	i32 1664238415, ; 112: Xamarin.Firebase.Database.Collection => 0x6332434f => 101
	i32 1670060433, ; 113: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 57
	i32 1698840827, ; 114: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 124
	i32 1701541528, ; 115: System.Diagnostics.Debug.dll => 0x656b7698 => 4
	i32 1726116996, ; 116: System.Reflection.dll => 0x66e27484 => 143
	i32 1729485958, ; 117: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1748729059, ; 118: Xamarin.GoogleAndroid.Annotations => 0x683b7ce3 => 110
	i32 1776026572, ; 119: System.Core.dll => 0x69dc03cc => 34
	i32 1782161461, ; 120: Grpc.Core.Api => 0x6a39a035 => 19
	i32 1788241197, ; 121: Xamarin.AndroidX.Fragment => 0x6a96652d => 69
	i32 1796167890, ; 122: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 24
	i32 1808609942, ; 123: Xamarin.AndroidX.Loader => 0x6bcd3296 => 78
	i32 1813058853, ; 124: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 125
	i32 1813201214, ; 125: Xamarin.Google.Android.Material => 0x6c13413e => 105
	i32 1828688058, ; 126: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 26
	i32 1867746548, ; 127: Xamarin.Essentials.dll => 0x6f538cf4 => 95
	i32 1875053220, ; 128: Xamarin.Firebase.Auth.Interop => 0x6fc30aa4 => 98
	i32 1885316902, ; 129: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 51
	i32 1900519031, ; 130: Grpc.Auth.dll => 0x71479e77 => 18
	i32 1908813208, ; 131: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 112
	i32 1919157823, ; 132: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 80
	i32 1983156543, ; 133: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 124
	i32 2011961780, ; 134: System.Buffers.dll => 0x77ec19b4 => 32
	i32 2019465201, ; 135: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 76
	i32 2055257422, ; 136: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 73
	i32 2079903147, ; 137: System.Runtime.dll => 0x7bf8cdab => 43
	i32 2083657273, ; 138: Xamarin.Firebase.ProtoliteWellKnownTypes => 0x7c321639 => 104
	i32 2090596640, ; 139: System.Numerics.Vectors => 0x7c9bf920 => 41
	i32 2129483829, ; 140: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 111
	i32 2174878672, ; 141: Xamarin.Firebase.Annotations => 0x81a203d0 => 96
	i32 2192057212, ; 142: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 26
	i32 2195564014, ; 143: Xamarin.Grpc.Context => 0x82dda5ee => 116
	i32 2201107256, ; 144: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 129
	i32 2201231467, ; 145: System.Net.Http => 0x8334206b => 39
	i32 2217644978, ; 146: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 89
	i32 2244775296, ; 147: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 79
	i32 2256548716, ; 148: Xamarin.AndroidX.MultiDex => 0x8680336c => 80
	i32 2279755925, ; 149: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 83
	i32 2315684594, ; 150: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 46
	i32 2397347608, ; 151: Google.LongRunning.dll => 0x8ee49f18 => 15
	i32 2403452196, ; 152: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 67
	i32 2441199521, ; 153: Google.Cloud.Firestore => 0x9181bfa1 => 12
	i32 2465532216, ; 154: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 56
	i32 2471841756, ; 155: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 156: Java.Interop.dll => 0x93918882 => 22
	i32 2486847491, ; 157: Google.Api.Gax => 0x943a4803 => 6
	i32 2501346920, ; 158: System.Data.DataSetExtensions => 0x95178668 => 133
	i32 2505896520, ; 159: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 75
	i32 2581819634, ; 160: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 90
	i32 2591433303, ; 161: Xamarin.Grpc.Core.dll => 0x9a762257 => 117
	i32 2605712449, ; 162: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 129
	i32 2620871830, ; 163: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 61
	i32 2624644809, ; 164: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 66
	i32 2635732976, ; 165: Google.Cloud.Firestore.dll => 0x9d1a17f0 => 12
	i32 2640452924, ; 166: Xamarin.Grpc.Protobuf.Lite => 0x9d621d3c => 119
	i32 2652665316, ; 167: Xamarin.CodeHaus.Mojo.AnimalSnifferAnnotations.dll => 0x9e1c75e4 => 94
	i32 2701096212, ; 168: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 87
	i32 2715831284, ; 169: Xamarin.Firebase.ProtoliteWellKnownTypes.dll => 0xa1e04bf4 => 104
	i32 2732626843, ; 170: Xamarin.AndroidX.Activity => 0xa2e0939b => 45
	i32 2737747696, ; 171: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 48
	i32 2744327253, ; 172: Google.Api.Gax.Grpc.dll => 0xa3931c55 => 7
	i32 2752363754, ; 173: Xamarin.Firebase.Firestore.dll => 0xa40dbcea => 103
	i32 2757554483, ; 174: Google.Api.Gax.Grpc => 0xa45cf133 => 7
	i32 2765528135, ; 175: Xamarin.Io.PerfMark.PerfMarkApi.dll => 0xa4d69c47 => 121
	i32 2770495804, ; 176: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 123
	i32 2778768386, ; 177: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 92
	i32 2779977773, ; 178: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 84
	i32 2799649579, ; 179: Xamarin.Protobuf.JavaLite.dll => 0xa6df432b => 130
	i32 2804607052, ; 180: Xamarin.Firebase.Components.dll => 0xa72ae84c => 100
	i32 2810250172, ; 181: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 58
	i32 2818335264, ; 182: System.Linq.Async => 0xa7fc6220 => 37
	i32 2819470561, ; 183: System.Xml.dll => 0xa80db4e1 => 44
	i32 2821294376, ; 184: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 84
	i32 2839679515, ; 185: Google.LongRunning => 0xa942121b => 15
	i32 2847418871, ; 186: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 111
	i32 2853208004, ; 187: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 92
	i32 2853863323, ; 188: TestQuest => 0xaa1a7f9b => 0
	i32 2855708567, ; 189: Xamarin.AndroidX.Transition => 0xaa36a797 => 88
	i32 2856624150, ; 190: Xamarin.Grpc.Core => 0xaa44a016 => 117
	i32 2870458124, ; 191: Xamarin.Firebase.AppCheck.Interop => 0xab17b70c => 97
	i32 2875164099, ; 192: Jsr305Binding.dll => 0xab5f85c3 => 23
	i32 2886449589, ; 193: TestQuest.dll => 0xac0bb9b5 => 0
	i32 2893550578, ; 194: Google.Apis.Core => 0xac7813f2 => 10
	i32 2901442782, ; 195: System.Reflection => 0xacf080de => 143
	i32 2903344695, ; 196: System.ComponentModel.Composition => 0xad0d8637 => 137
	i32 2905242038, ; 197: mscorlib.dll => 0xad2a79b6 => 28
	i32 2912646636, ; 198: Google.Api.CommonProtos => 0xad9b75ec => 5
	i32 2916838712, ; 199: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 93
	i32 2919462931, ; 200: System.Numerics.Vectors.dll => 0xae037813 => 41
	i32 2921128767, ; 201: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 47
	i32 2943219317, ; 202: Square.OkIO => 0xaf6df675 => 30
	i32 2960379616, ; 203: Xamarin.Google.Guava => 0xb073cee0 => 107
	i32 2978675010, ; 204: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 65
	i32 2990604888, ; 205: Google.Apis => 0xb2410258 => 11
	i32 2996846495, ; 206: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 74
	i32 3016983068, ; 207: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 86
	i32 3024354802, ; 208: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 71
	i32 3058099980, ; 209: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 113
	i32 3071899978, ; 210: Xamarin.Firebase.Common.dll => 0xb719794a => 99
	i32 3106263381, ; 211: Grpc.Net.Common.dll => 0xb925d155 => 21
	i32 3111772706, ; 212: System.Runtime.Serialization => 0xb979e222 => 138
	i32 3130021562, ; 213: Google.Apis.Auth.PlatformServices.dll => 0xba9056ba => 9
	i32 3147165239, ; 214: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 142
	i32 3148237826, ; 215: GoogleGson.dll => 0xbba64c02 => 17
	i32 3203277885, ; 216: Google.Api.Gax.dll => 0xbeee243d => 6
	i32 3204380047, ; 217: System.Data.dll => 0xbefef58f => 131
	i32 3211777861, ; 218: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 64
	i32 3220365878, ; 219: System.Threading => 0xbff2e236 => 3
	i32 3222740722, ; 220: Xamarin.Protobuf.JavaLite => 0xc0171ef2 => 130
	i32 3230271625, ; 221: Square.OkIO.JVM => 0xc08a0889 => 31
	i32 3230466174, ; 222: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 112
	i32 3247949154, ; 223: Mono.Security => 0xc197c562 => 145
	i32 3258312781, ; 224: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3317135071, ; 225: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 62
	i32 3317144872, ; 226: System.Data => 0xc5b79d28 => 131
	i32 3340431453, ; 227: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 51
	i32 3345895724, ; 228: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 82
	i32 3362522851, ; 229: Xamarin.AndroidX.Core => 0xc86c06e3 => 60
	i32 3366347497, ; 230: Java.Interop => 0xc8a662e9 => 22
	i32 3374999561, ; 231: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 83
	i32 3395150330, ; 232: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 42
	i32 3404865022, ; 233: System.ServiceModel.Internals => 0xcaf21dfe => 139
	i32 3405233483, ; 234: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 63
	i32 3429136800, ; 235: System.Xml => 0xcc6479a0 => 44
	i32 3430777524, ; 236: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 237: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 66
	i32 3453592554, ; 238: Google.Apis.Core.dll => 0xcdd9a3ea => 10
	i32 3473879593, ; 239: Xamarin.Grpc.OkHttp.dll => 0xcf0f3229 => 118
	i32 3476120550, ; 240: Mono.Android => 0xcf3163e6 => 27
	i32 3486566296, ; 241: System.Transactions => 0xcfd0c798 => 132
	i32 3493954962, ; 242: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 55
	i32 3499097210, ; 243: Google.Protobuf.dll => 0xd08ffc7a => 16
	i32 3509114376, ; 244: System.Xml.Linq => 0xd128d608 => 141
	i32 3567349600, ; 245: System.ComponentModel.Composition.dll => 0xd4a16f60 => 137
	i32 3597794883, ; 246: Xamarin.Firebase.Firestore => 0xd671fe43 => 103
	i32 3598063517, ; 247: Google.Cloud.Firestore.V1 => 0xd676179d => 13
	i32 3619593299, ; 248: Xamarin.Firebase.Database.dll => 0xd7be9c53 => 102
	i32 3627220390, ; 249: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 81
	i32 3633644679, ; 250: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 47
	i32 3641597786, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 73
	i32 3645630983, ; 252: Google.Protobuf => 0xd94bea07 => 16
	i32 3672681054, ; 253: Mono.Android.dll => 0xdae8aa5e => 27
	i32 3676310014, ; 254: System.Web.Services.dll => 0xdb2009fe => 140
	i32 3682565725, ; 255: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 52
	i32 3684561358, ; 256: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 55
	i32 3689375977, ; 257: System.Drawing.Common => 0xdbe768e9 => 134
	i32 3706696989, ; 258: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 59
	i32 3718780102, ; 259: Xamarin.AndroidX.Annotation => 0xdda814c6 => 46
	i32 3748608112, ; 260: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 35
	i32 3757995660, ; 261: Google.Cloud.Location.dll => 0xdffe768c => 14
	i32 3786282454, ; 262: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3793997468, ; 263: Google.Apis.Auth.dll => 0xe223ce9c => 8
	i32 3829621856, ; 264: System.Numerics.dll => 0xe4436460 => 40
	i32 3841636137, ; 265: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 25
	i32 3885922214, ; 266: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 88
	i32 3888767677, ; 267: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 82
	i32 3896760992, ; 268: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 60
	i32 3920810846, ; 269: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 136
	i32 3921031405, ; 270: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 91
	i32 3934056515, ; 271: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 122
	i32 3943739589, ; 272: Xamarin.Grpc.Context.dll => 0xeb10b0c5 => 116
	i32 3945713374, ; 273: System.Data.DataSetExtensions.dll => 0xeb2ecede => 133
	i32 3955647286, ; 274: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 49
	i32 3959773229, ; 275: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 74
	i32 3970018735, ; 276: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 113
	i32 4025784931, ; 277: System.Memory => 0xeff49a63 => 38
	i32 4056144661, ; 278: Google.Cloud.Location => 0xf1c3db15 => 14
	i32 4059682726, ; 279: Google.Apis.dll => 0xf1f9d7a6 => 11
	i32 4073602200, ; 280: System.Threading.dll => 0xf2ce3c98 => 3
	i32 4082882467, ; 281: Google.Apis.Auth => 0xf35bd7a3 => 8
	i32 4101593132, ; 282: Xamarin.AndroidX.Emoji2 => 0xf479582c => 67
	i32 4105002889, ; 283: Mono.Security.dll => 0xf4ad5f89 => 145
	i32 4151237749, ; 284: System.Core => 0xf76edc75 => 34
	i32 4182413190, ; 285: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 77
	i32 4213026141, ; 286: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 35
	i32 4223148364, ; 287: Xamarin.Grpc.Android.dll => 0xfbb8214c => 114
	i32 4256097574, ; 288: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 59
	i32 4260525087, ; 289: System.Buffers => 0xfdf2741f => 32
	i32 4284549794, ; 290: Xamarin.Firebase.Components => 0xff610aa2 => 100
	i32 4292120959 ; 291: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 77
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [292 x i32] [
	i32 119, i32 114, i32 75, i32 109, i32 29, i32 96, i32 126, i32 54, ; 0..7
	i32 102, i32 52, i32 4, i32 110, i32 71, i32 140, i32 57, i32 108, ; 8..15
	i32 118, i32 70, i32 45, i32 40, i32 72, i32 21, i32 19, i32 38, ; 16..23
	i32 20, i32 56, i32 95, i32 2, i32 69, i32 101, i32 28, i32 36, ; 24..31
	i32 70, i32 79, i32 97, i32 132, i32 126, i32 144, i32 24, i32 23, ; 32..39
	i32 136, i32 62, i32 68, i32 13, i32 91, i32 50, i32 141, i32 128, ; 40..47
	i32 123, i32 115, i32 31, i32 127, i32 135, i32 63, i32 134, i32 81, ; 48..55
	i32 109, i32 29, i32 127, i32 30, i32 72, i32 142, i32 2, i32 85, ; 56..63
	i32 25, i32 106, i32 49, i32 5, i32 76, i32 17, i32 125, i32 36, ; 64..71
	i32 94, i32 37, i32 120, i32 89, i32 20, i32 50, i32 120, i32 107, ; 72..79
	i32 86, i32 90, i32 128, i32 65, i32 121, i32 99, i32 139, i32 85, ; 80..87
	i32 122, i32 58, i32 108, i32 42, i32 98, i32 18, i32 144, i32 33, ; 88..95
	i32 135, i32 48, i32 33, i32 115, i32 9, i32 64, i32 138, i32 106, ; 96..103
	i32 78, i32 93, i32 68, i32 61, i32 39, i32 43, i32 87, i32 105, ; 104..111
	i32 101, i32 57, i32 124, i32 4, i32 143, i32 53, i32 110, i32 34, ; 112..119
	i32 19, i32 69, i32 24, i32 78, i32 125, i32 105, i32 26, i32 95, ; 120..127
	i32 98, i32 51, i32 18, i32 112, i32 80, i32 124, i32 32, i32 76, ; 128..135
	i32 73, i32 43, i32 104, i32 41, i32 111, i32 96, i32 26, i32 116, ; 136..143
	i32 129, i32 39, i32 89, i32 79, i32 80, i32 83, i32 46, i32 15, ; 144..151
	i32 67, i32 12, i32 56, i32 1, i32 22, i32 6, i32 133, i32 75, ; 152..159
	i32 90, i32 117, i32 129, i32 61, i32 66, i32 12, i32 119, i32 94, ; 160..167
	i32 87, i32 104, i32 45, i32 48, i32 7, i32 103, i32 7, i32 121, ; 168..175
	i32 123, i32 92, i32 84, i32 130, i32 100, i32 58, i32 37, i32 44, ; 176..183
	i32 84, i32 15, i32 111, i32 92, i32 0, i32 88, i32 117, i32 97, ; 184..191
	i32 23, i32 0, i32 10, i32 143, i32 137, i32 28, i32 5, i32 93, ; 192..199
	i32 41, i32 47, i32 30, i32 107, i32 65, i32 11, i32 74, i32 86, ; 200..207
	i32 71, i32 113, i32 99, i32 21, i32 138, i32 9, i32 142, i32 17, ; 208..215
	i32 6, i32 131, i32 64, i32 3, i32 130, i32 31, i32 112, i32 145, ; 216..223
	i32 53, i32 62, i32 131, i32 51, i32 82, i32 60, i32 22, i32 83, ; 224..231
	i32 42, i32 139, i32 63, i32 44, i32 1, i32 66, i32 10, i32 118, ; 232..239
	i32 27, i32 132, i32 55, i32 16, i32 141, i32 137, i32 103, i32 13, ; 240..247
	i32 102, i32 81, i32 47, i32 73, i32 16, i32 27, i32 140, i32 52, ; 248..255
	i32 55, i32 134, i32 59, i32 46, i32 35, i32 14, i32 54, i32 8, ; 256..263
	i32 40, i32 25, i32 88, i32 82, i32 60, i32 136, i32 91, i32 122, ; 264..271
	i32 116, i32 133, i32 49, i32 74, i32 113, i32 38, i32 14, i32 11, ; 272..279
	i32 3, i32 8, i32 67, i32 145, i32 34, i32 77, i32 35, i32 114, ; 280..287
	i32 59, i32 32, i32 100, i32 77 ; 288..291
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}

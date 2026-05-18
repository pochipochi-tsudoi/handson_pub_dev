// STEP 4
// import 'package:pochi_pochi2026_handson/handson/model/package/model.dart';
// import 'package:pochi_pochi2026_handson/handson/provider/dio/provider.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'provider.g.dart';
//
// @riverpod
// class PackageNotifier extends _$PackageNotifier {
//   @override
//   void build() {}
//
//   Future<PackageDetailResponse> fetch(String packageName) async {
//     final response = await ref
//         .read(apiClientProvider)
//         .get('/packages/$packageName');
//     return PackageDetailResponse.fromJson(response.data);
//   }
// }

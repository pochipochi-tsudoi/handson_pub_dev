// STEP 5
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:pochi_pochi2026_handson/handson/model/package/model.dart';
// import 'package:pochi_pochi2026_handson/handson/provider/package/provider.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'view_model.freezed.dart';
// part 'view_model.g.dart';
//
// @freezed
// abstract class DetailsScreenState with _$DetailsScreenState {
//   const factory DetailsScreenState({
//     required PackageDetailResponse? packageDetail,
//   }) = _DetailsScreenState;
// }
//
// @riverpod
// class DetailsScreenViewModel extends _$DetailsScreenViewModel {
//   @override
//   Future<DetailsScreenState> build(String name) async {
//     final response = await ref.watch(packageProvider.notifier).fetch(name);
//
//     return DetailsScreenState(packageDetail: response);
//   }
// }

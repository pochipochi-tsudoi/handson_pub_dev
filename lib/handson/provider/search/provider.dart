// STEP 4
// import 'package:pochi_pochi2026_handson/handson/model/search/model.dart';
// import 'package:pochi_pochi2026_handson/handson/provider/dio/provider.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'provider.g.dart';
//
// @riverpod
// class SearchNotifier extends _$SearchNotifier {
//   @override
//   void build() {}
//
//   Future<SearchResponse> search(String query) async {
//     final response = await ref.read(apiClientProvider).get('/search?q=$query');
//     return SearchResponse.fromJson(response.data);
//   }
// }

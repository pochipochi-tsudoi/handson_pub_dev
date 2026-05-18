import 'package:handson_pub_dev/complete/model/search/model.dart';
import 'package:handson_pub_dev/complete/provider/dio/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  @override
  void build() {}

  Future<SearchResponse> search(String query) async {
    final response = await ref.read(apiClientProvider).get('/search?q=$query');
    return SearchResponse.fromJson(response.data);
  }
}

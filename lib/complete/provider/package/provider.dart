import 'package:handson_pub_dev/complete/model/package/model.dart';
import 'package:handson_pub_dev/complete/provider/dio/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class PackageNotifier extends _$PackageNotifier {
  @override
  void build() {}

  Future<PackageDetailResponse> fetch(String packageName) async {
    final response = await ref
        .read(apiClientProvider)
        .get('/packages/$packageName');
    return PackageDetailResponse.fromJson(response.data);
  }
}

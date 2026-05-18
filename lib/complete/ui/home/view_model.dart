import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:handson_pub_dev/complete/model/search/model.dart';
import 'package:handson_pub_dev/complete/provider/search/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'view_model.freezed.dart';
part 'view_model.g.dart';

@freezed
abstract class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required bool isLoading,
    required List<Package> packages,
  }) = _HomeScreenState;
}

@riverpod
class HomeScreenViewModel extends _$HomeScreenViewModel {
  @override
  HomeScreenState build() {
    return const HomeScreenState(isLoading: false, packages: []);
  }

  Future<void> search(String query) async {
    state = state.copyWith(isLoading: true);
    final response = await ref.read(searchProvider.notifier).search(query);
    state = state.copyWith(isLoading: false, packages: response.packages);
  }
}

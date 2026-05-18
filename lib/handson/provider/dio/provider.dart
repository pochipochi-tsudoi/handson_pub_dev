// STEP 4
// import 'package:dio/dio.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'provider.g.dart';
//
// @riverpod
// ApiClient apiClient(Ref ref) {
//   return ApiClient();
// }
//
// class ApiClient {
//   final Dio _dio = Dio(
//     BaseOptions(
//       baseUrl: "https://pub.dev/api",
//       connectTimeout: const Duration(seconds: 10),
//       receiveTimeout: const Duration(seconds: 10),
//       headers: {"Content-Type": "application/json"},
//     ),
//   );
//
//   Future<Response<dynamic>> get(String endpoint) async {
//     try {
//       final response = await _dio.get(endpoint);
//       return response;
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }
// }

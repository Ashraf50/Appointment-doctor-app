import 'package:dio/dio.dart';

class ApiHelper {
  final Dio _dio = Dio();
  Future post(url, Map<String, dynamic> data) async {
    try {
      return await _dio.post(
        url,
        data: data,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future get(url, {Map<String, dynamic>? headers}) async {
    try {
      return await _dio.get(
        url,
        options: Options(headers: headers),
      );
    } catch (e) {
      rethrow;
    }
  }
}

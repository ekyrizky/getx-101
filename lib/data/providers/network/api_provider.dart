import 'package:get/get.dart';
import 'package:getx_101/data/providers/network/api_request.dart';

class ApiProvider {
  final _client = GetConnect(timeout: const Duration(seconds: 5));

  static final _singleton = ApiProvider();
  static ApiProvider get instance => _singleton;

  Future request(APIRequest request) async {
    try {
      final response = await _client.request(
        request.url,
        "get",
        headers: request.headers,
        query: request.query,
        body: request.body,
      );
      if (response.statusCode == 200) {
        return response.body;
      } else {
        throw Exception("Failed to fetch data ${response.statusCode}");
      }
    } catch (e) {
      return print("Error request $e");
    }
  }
}

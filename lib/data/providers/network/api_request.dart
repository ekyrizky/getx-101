abstract class APIRequest {
  String get url;
  String get endpoint;
  String get path;
  String get method;
  Map<String, String>? get headers;
  Map<String, String>? get query;
  dynamic get body;
  Future request();
}

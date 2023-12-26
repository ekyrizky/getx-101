import 'package:getx_101/data/providers/network/api_endpoint.dart';
import 'package:getx_101/data/providers/network/api_provider.dart';
import 'package:getx_101/data/providers/network/api_request.dart';

class ArticleService implements APIRequest {
  ArticleService();

  @override
  get body => null;

  @override
  String get endpoint => APIEndpoint.newsapi;

  @override
  Map<String, String>? get headers =>
      {"X-Api-Key": "d809d6a547734a67af23365ce5bc8c02"};

  @override
  String get method => "get";

  @override
  String get path => "/top-headlines";

  @override
  Map<String, String>? get query => {"country": "id"};

  @override
  Future request() {
    return ApiProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}

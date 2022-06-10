import 'package:dio/dio.dart';

class TokenInjector extends Interceptor{
@override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
      
      super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }
}
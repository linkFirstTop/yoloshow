import 'dart:typed_data';

import 'package:dd_js_util/api/base.dart';
import 'package:dio/dio.dart';
import 'package:protobuf/protobuf.dart';

abstract class MyBaseApi<T extends GeneratedMessage> extends BaseApi {
  final String apiUrl;

  MyBaseApi(this.apiUrl) : super(apiUrl, httpMethod: HttpMethod.probuf);

  @override
  Future<T> request(
      {bool showErrorMsg = true,
      String? loadingText,
      String contentType = "",
      Map<String, dynamic>? headers,
      bool showDefaultLoading = true,
      Map<String, dynamic>? data,
      ResponseType? responseType}) async {
    final response = await super.request(
        showErrorMsg: showErrorMsg,
        loadingText: loadingText,
        contentType: contentType,
        headers: headers,
        showDefaultLoading: showDefaultLoading,
        responseType: ResponseType.bytes);
    return covertData(response as Uint8List);
  }

  T covertData(List<int> data);

}

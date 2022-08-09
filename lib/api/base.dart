import 'dart:typed_data';

import 'package:dd_js_util/api/base.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:protobuf/protobuf.dart';

abstract class MyBaseApi<R extends GeneratedMessage, T extends GeneratedMessage> extends BaseApi {
  final String apiUrl;

  MyBaseApi(this.apiUrl) : super(apiUrl, httpMethod: HttpMethod.probuf);

  @override
  Future<T> request(
      {bool showErrorMsg = true,
      String? loadingText,
      String contentType = "",
      Map<String, dynamic>? headers,
      bool showDefaultLoading = true,
      dynamic? data,
      ResponseType? responseType,
      bool? nullParams,
      RequestEncoder? requestEncoder}) async {
    final response = await super.request(
        showErrorMsg: showErrorMsg,
        loadingText: loadingText,
        contentType: contentType,
        data: Stream.fromIterable([covertRequest.writeToBuffer()]),
        headers: headers,
        showDefaultLoading: showDefaultLoading,
        responseType: ResponseType.bytes,
        nullParams: true);
    final r = covertData(response as Uint8List);
    Logger().wtf(r.toString());
    return r;
  }

  T covertData(List<int> data);

  R get covertRequest;
}

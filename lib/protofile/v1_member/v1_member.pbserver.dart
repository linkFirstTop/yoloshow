///
//  Generated code. Do not modify.
//  source: v1_member/v1_member.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'v1_member.pb.dart' as $1;
import 'v1_member.pbjson.dart';

export 'v1_member.pb.dart';

abstract class LoginAPIServiceBase extends $pb.GeneratedService {
  $async.Future<$1.LoginRpcResponse> loginRpc($pb.ServerContext ctx, $1.LoginRpcRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'LoginRpc': return $1.LoginRpcRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'LoginRpc': return this.loginRpc(ctx, request as $1.LoginRpcRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => LoginAPIServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => LoginAPIServiceBase$messageJson;
}


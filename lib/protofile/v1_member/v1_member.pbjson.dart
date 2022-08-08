///
//  Generated code. Do not modify.
//  source: v1_member/v1_member.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
import '../common/common.pbjson.dart' as $0;

@$core.Deprecated('Use loginRpcRequestDescriptor instead')
const LoginRpcRequest$json = const {
  '1': 'LoginRpcRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRpcRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRpcRequestDescriptor = $convert.base64Decode('Cg9Mb2dpblJwY1JlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginRpcResponseDescriptor instead')
const LoginRpcResponse$json = const {
  '1': 'LoginRpcResponse',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 11, '6': '.common.StatusResponse', '10': 'error'},
    const {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `LoginRpcResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRpcResponseDescriptor = $convert.base64Decode('ChBMb2dpblJwY1Jlc3BvbnNlEiwKBWVycm9yGAEgASgLMhYuY29tbW9uLlN0YXR1c1Jlc3BvbnNlUgVlcnJvchIUCgV0b2tlbhgCIAEoCVIFdG9rZW4=');
const $core.Map<$core.String, $core.dynamic> LoginAPIServiceBase$json = const {
  '1': 'LoginAPI',
  '2': const [
    const {'1': 'LoginRpc', '2': '.v1_member.LoginRpcRequest', '3': '.v1_member.LoginRpcResponse', '4': const {}},
  ],
};

@$core.Deprecated('Use loginAPIServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> LoginAPIServiceBase$messageJson = const {
  '.v1_member.LoginRpcRequest': LoginRpcRequest$json,
  '.v1_member.LoginRpcResponse': LoginRpcResponse$json,
  '.common.StatusResponse': $0.StatusResponse$json,
};

/// Descriptor for `LoginAPI`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List loginAPIServiceDescriptor = $convert.base64Decode('CghMb2dpbkFQSRJFCghMb2dpblJwYxIaLnYxX21lbWJlci5Mb2dpblJwY1JlcXVlc3QaGy52MV9tZW1iZXIuTG9naW5ScGNSZXNwb25zZSIA');

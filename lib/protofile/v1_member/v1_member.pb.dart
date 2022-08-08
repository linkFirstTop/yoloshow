///
//  Generated code. Do not modify.
//  source: v1_member/v1_member.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../common/common.pb.dart' as $0;

class LoginRpcRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRpcRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1_member'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..hasRequiredFields = false
  ;

  LoginRpcRequest._() : super();
  factory LoginRpcRequest({
    $core.String? username,
    $core.String? password,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory LoginRpcRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRpcRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRpcRequest clone() => LoginRpcRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRpcRequest copyWith(void Function(LoginRpcRequest) updates) => super.copyWith((message) => updates(message as LoginRpcRequest)) as LoginRpcRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRpcRequest create() => LoginRpcRequest._();
  LoginRpcRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRpcRequest> createRepeated() => $pb.PbList<LoginRpcRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRpcRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRpcRequest>(create);
  static LoginRpcRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class LoginRpcResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LoginRpcResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'v1_member'), createEmptyInstance: create)
    ..aOM<$0.StatusResponse>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error', subBuilder: $0.StatusResponse.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..hasRequiredFields = false
  ;

  LoginRpcResponse._() : super();
  factory LoginRpcResponse({
    $0.StatusResponse? error,
    $core.String? token,
  }) {
    final _result = create();
    if (error != null) {
      _result.error = error;
    }
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory LoginRpcResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRpcResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoginRpcResponse clone() => LoginRpcResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoginRpcResponse copyWith(void Function(LoginRpcResponse) updates) => super.copyWith((message) => updates(message as LoginRpcResponse)) as LoginRpcResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRpcResponse create() => LoginRpcResponse._();
  LoginRpcResponse createEmptyInstance() => create();
  static $pb.PbList<LoginRpcResponse> createRepeated() => $pb.PbList<LoginRpcResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginRpcResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRpcResponse>(create);
  static LoginRpcResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StatusResponse get error => $_getN(0);
  @$pb.TagNumber(1)
  set error($0.StatusResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasError() => $_has(0);
  @$pb.TagNumber(1)
  void clearError() => clearField(1);
  @$pb.TagNumber(1)
  $0.StatusResponse ensureError() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => clearField(2);
}

class LoginAPIApi {
  $pb.RpcClient _client;
  LoginAPIApi(this._client);

  $async.Future<LoginRpcResponse> loginRpc($pb.ClientContext? ctx, LoginRpcRequest request) {
    var emptyResponse = LoginRpcResponse();
    return _client.invoke<LoginRpcResponse>(ctx, 'LoginAPI', 'LoginRpc', request, emptyResponse);
  }
}


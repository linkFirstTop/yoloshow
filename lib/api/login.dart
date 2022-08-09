

import '../protofile/v1_member/v1_member.pb.dart';
import 'base.dart';

///登录请求
class LoginApi extends MyBaseApi<LoginRpcRequest,LoginRpcResponse> {
  final LoginRpcRequest rpcRequest;
  LoginApi(this.rpcRequest):super('v1/member/login'){
    params.addAll(rpcRequest.writeToJsonMap());
  }

  @override
  LoginRpcResponse covertData(List<int> data) {
    return LoginRpcResponse.fromBuffer(data);
  }

  @override
  LoginRpcRequest get covertRequest => rpcRequest;

}
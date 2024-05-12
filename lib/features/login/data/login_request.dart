class LoginRequest {
int?  connectionId ;
String? userName;
String? password;
int? branchId;

LoginRequest( this.connectionId,this.userName,this.password,this.branchId);

LoginRequest.fromJson(Map<String, dynamic> json) {
connectionId = json['connectionId'];
userName = json['userName'];
password = json['password'];
branchId = json['branchId'];
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['connectionId'] = connectionId;
  data['userName'] = userName;
  data['password'] = password;
  data['branchId'] = branchId;
  return data;
}
}
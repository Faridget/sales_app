class ConnectionRequest {
  late int connectionId;

  ConnectionRequest( int connectionId ){
    connectionId = connectionId;

  }

  ConnectionRequest.fromJson(dynamic json) {
    connectionId = json["connectionId"]!;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["connectionId"] = connectionId;
    return map;
  }

}
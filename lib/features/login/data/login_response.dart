import 'package:shared_preferences/shared_preferences.dart';

class LoginResponse {
 late int code;
  late String message;
 late LoginData data;

  LoginResponse({required this.code, required this.message, required this.data});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    data = (json['data'] != null ? LoginData.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    data['data'] = this.data.toJson();
  
    return data;
  }
}

class LoginData {
  late int connectionId;
  String? initialPage;
  String? comP_LOGO;
  int? empCode;
  String? empName;
  String? secondName;
  String? empTel;
  String? empMob;
  String? empMail;
  String? empPic;
  int? jobid;
  int? departId;
  String? empJopdate;
  int? prounchID;
  int? nationalityID;
  Null passportID;
  int? userID;
  String? latitude;
  String? longitude;
  bool? allowFullControl;
  bool? isManager;
  String? mandopName;
  String? branchName;
  bool? isSaudi;
  bool? canReviewOthers_HR;
  bool? isAdmin;
  int? mandopId;
  String? appLastVersion;

  LoginData(
      {
       required this.connectionId,
        this.initialPage,
        this.comP_LOGO,
        this.empCode,
        this.empName,
        this.secondName,
        this.empTel,
        this.empMob,
        this.empMail,
        this.empPic,
        this.jobid,
        this.departId,
        this.empJopdate,
        this.prounchID,
        this.nationalityID,
        this.passportID,
        this.userID,this.latitude,this.longitude,this.allowFullControl,this.isManager,
        this.mandopName,this.branchName,this.isSaudi,this.canReviewOthers_HR, this.appLastVersion,this.isAdmin,this.mandopId});

  LoginData.fromJson(Map<String, dynamic> json) {
    empCode = json['emp_code']!;
    empName = json['emp_name']!;
    comP_LOGO = json['comP_LOGO']!;
    secondName = json['secondName']!;
    empTel = json['emp_tel']!;
    empMob = json['emp_mob']!;
    empMail = json['emp_mail']!;
    empPic = json['emp_pic']!;
    jobid = json['jobid']!;
    departId = json['depart_id']!;
    empJopdate = json['emp_jopdate']!;
    prounchID = json['prounchID']!;
    nationalityID = json['nationalityID']!;
    passportID = json['passportID']!;
    userID = json['userID']!;
    latitude = json['latitude']!;
    longitude = json['longitude']!;
    allowFullControl = json['allowFullControl']!;
    isManager = json['isManager']!;
    mandopName = json['mandopName']!;
    branchName = json['branchName']!;
    isSaudi = json['isSaudi']!;
    canReviewOthers_HR = json['canReviewOthers_HR']!;
    appLastVersion = json['appLastVersion']!;
    isAdmin = json['isAdmin']!;
    mandopId = json['mandopId']!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['emp_code'] = empCode;
    data['emp_name'] = empName;
    data['comP_LOGO'] = comP_LOGO;
    data['secondName'] = secondName;
    data['emp_tel'] = empTel;
    data['emp_mob'] = empMob;
    data['emp_mail'] = empMail;
    data['emp_pic'] = empPic;
    data['jobid'] = jobid;
    data['depart_id'] = departId;
    data['emp_jopdate'] = empJopdate;
    data['prounchID'] =    prounchID;
    data['nationalityID'] = nationalityID;
    data['passportID'] = passportID;
    data['userID'] = userID;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['allowFullControl'] = allowFullControl;
    data['isManager'] = isManager;
    data['mandopName'] = mandopName;
    data['branchName'] = branchName;
    data['isSaudi'] = isSaudi;
    data['canReviewOthers_HR'] = canReviewOthers_HR;
    data['appLastVersion'] = appLastVersion;
    data['isAdmin'] = isAdmin;
    data['mandopId'] = mandopId;
    return data;
  }
}


Future<bool> clear() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // print("Clear shared preffffffff");
  // print(prefs.getString("Email"));
  //prefs.clear() ;

  await prefs.remove('emp_code');
  await prefs.remove('emp_name');
  await prefs.remove('emp_mail');
  await prefs.remove('mandopName');
  await prefs.remove('branchName');
  await prefs.remove('isSaudi');
  await prefs.remove('userID');
  await prefs.remove('canReviewOthers_HR');
  await prefs.remove('comP_LOGO');
  await prefs.remove('isAdmin');
  await prefs.remove('mandopId');
  return true ;
}


Future<bool> saveInfoDatabase(String initialPage ,int connectionId) async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("connectionId", connectionId);
    await prefs.setString("initialPage", initialPage);
    return true ;
  }catch(Excption){
    print("save to shared faild   :  $Excption");
    return false ;
  }
}

Future<bool> saveUser(LoginData user) async {
  try {
    // print("Start save user");
    // print("Start save user"+user.allowFullControl.toString());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(user.empCode!=null) {
      await prefs.setInt("emp_code", user.empCode!);
    }
    if(user.userID!=null) {
      await prefs.setInt("userID", user.userID!);
    }
    if(user.mandopId!=null) {
      await prefs.setInt("mandopId", user.mandopId!);
    }
    if(user.empName!=null) {
      await prefs.setString("emp_name", user.empName!);
    }
     if(user.comP_LOGO!=null) {
      await prefs.setString("comP_LOGO", user.comP_LOGO!);
    }
    if(user.empMail!=null) {
      await prefs.setString("empMail", user.empMail!);
    }
    if(user.empPic!=null) {
      await prefs.setString("emp_pic", user.empPic!);
    }
    if(user.latitude!=null) {
      await prefs.setString("latitude", user.latitude!);
    }
    if(user.longitude!=null) {
      await prefs.setString("longitude", user.longitude!);
    }
    if(user.allowFullControl!=null) {
      await prefs.setBool("allowFullControl", user.allowFullControl!);
    }
    if(user.isManager!=null) {
      await prefs.setBool("isManager", user.isManager!);
    }
    if(user.mandopName!=null) {
      await prefs.setString("mandopName", user.mandopName!);
    }
    if(user.branchName!=null) {
      await prefs.setString("branchName", user.branchName!);
    }if(user.isSaudi!=null) {
      await prefs.setBool("isSaudi", user.isSaudi!);
    }
    if(user.prounchID!=null) {
      await prefs.setInt("prounchID", user.prounchID!);
    }if(user.canReviewOthers_HR!=null) {
      await prefs.setBool("canReviewOthers_HR", user.canReviewOthers_HR!);
    }if(user.isAdmin!=null) {
      await prefs.setBool("isAdmin", user.isAdmin!);
    }

  // print("userIdIsOmar>> "+user.userID.toString());
  // print("MandopIsOmar>> "+user.mandopId.toString());
  // print("isAdminOmar>> "+user.isAdmin.toString());
    return true ;
  }catch(Excption){
    print("save to shared faild   :  $Excption");
    return false ;
  }
}


Future<LoginData > getUser () async{

  SharedPreferences prefs = await SharedPreferences.getInstance();
  //print("Email from shared Pref : "+prefs.getString("Email"));
  return   LoginData(
    userID: prefs.getInt("userID"),
      empCode: prefs.getInt("emp_code")!,
      empName: prefs.getString("emp_name").toString(),
      empMail: prefs.getString("emp_mail"),
      empPic: prefs.getString("emp_pic"),
      latitude: prefs.getString("latitude"),
      longitude: prefs.getString("longitude"),
      allowFullControl: prefs.getBool("allowFullControl"),
      isManager: prefs.getBool("isManager"),
    mandopName: prefs.getString("mandopName"),
    branchName: prefs.getString("branchName"),
    isSaudi: prefs.getBool("isSaudi"),
    isAdmin: prefs.getBool("isAdmin"),
    initialPage: prefs.getString("initialPage"),
    connectionId: prefs.getInt("connectionId")!.toInt(),
    comP_LOGO: prefs.getString("comP_LOGO"),
    canReviewOthers_HR: prefs.getBool("canReviewOthers_HR"),
    prounchID: prefs.getInt("prounchID")!,
    mandopId: prefs.getInt("mandopId"),
  );
}
Future<LoginData > getInfolDb () async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  //print("Email from shared Pref : "+prefs.getString("Email"));
  return   LoginData(
    initialPage: prefs.getString("initialPage")!,
    connectionId: prefs.getInt("connectionId")!,
  );
}
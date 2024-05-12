import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {

  static final String _kLanguageCode = "language";

  static Future<String?> getPrinterType() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("InsidePreference>>"+prefs.getString("PrinterType").toString());
    return prefs.getString("PrinterType");
  }
  static Future<bool> setPrinterType(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("PrinterType", value);
  }
  /// ------------------------------------------------------------
  /// Method that returns the user language code, 'en' if not set
  /// ------------------------------------------------------------
  static Future<String?> getLanguageCode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print("InsidePreference>>"+prefs.getString(_kLanguageCode).toString());
    return prefs.getString(_kLanguageCode);
  }

  /// ----------------------------------------------------------
  /// Method that saves the user language code
  /// ----------------------------------------------------------

  static Future<bool> setLanguageCode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(_kLanguageCode, value);
  }

//____________________

  static Future<String?> getInitialPage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return  prefs.getString("InitialPage") ;
  }

  static Future<bool> setInitialPage(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("InitialPage", value);
  }

  //____________________

  static Future<int?> getIdOfDataBase() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getInt("IdDb") ;
  }
  static Future<bool> setIdOfDataBase(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setInt("IdDb", value);
  }

  //____________________

  static Future<bool?> isUserLoged() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getBool("UserLoged") ;
  }
  static Future<bool> setUserLoged(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setBool("UserLoged", value);
  }

  static Future<String?> getOtpNumber() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return  prefs.getString("OtpNumber") ;
  }
  static Future<bool> setOtpNumber(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString("OtpNumber", value);
  }

  static Future<String?> getInquireEmployee() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return  prefs.getString("InquireEmployee") ;
  }
  static Future<bool> setInquireEmployee(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString("InquireEmployee", value);
  }

  static Future<int?> getInquireEmployeeEmpCode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return  prefs.getInt("InquireEmployeeEmpCode") ;
  }
  static Future<bool> setInquireEmployeeEmpCode(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setInt("InquireEmployeeEmpCode", value);
  }

  static Future<int?> getInquireEmployeeUserId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return  prefs.getInt("InquireEmployeeUserId") ;
  }

  static Future<bool> setInquireEmployeeUserId(int value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setInt("InquireEmployeeUserId", value);
  }

  static Future<bool> clearSharedPreference() async {
    bool m ;
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("cleeeeeeeer");
   m = await preferences.clear();
   return m;
    
  }


  static Future<String?> getTaxCheck() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return  prefs.getString("TaxCheck") ;
  }
  static Future<bool> setTaxCheck(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.setString("TaxCheck", value);
  }

  
}
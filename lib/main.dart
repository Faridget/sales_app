import 'package:flutter/material.dart';
//import 'package:sales_app/features/splash/presentation/splash_view.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:sales_app/features/companylist/presentation/view/company_list_view.dart';
//import 'package:sales_app/features/login/presentation/view/login_view.dart';
 
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
  FlutterNativeSplash.remove();
}

class MainApp extends StatelessWidget {
  final Color _primaryColor = const Color.fromARGB(15, 63, 112, 239);
  final Color _accentColor = const Color.fromARGB(15, 60, 224, 194);
    const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: _primaryColor,
        primaryColorDark: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const CompanyList(),
     
    );
  }
}

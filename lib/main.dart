import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:sales_app/features/companylist/presentation/view/company_list_view.dart';
import 'package:sales_app/features/login/presentation/view/login_view.dart';
//import 'package:sales_app/features/settings/presentation/view/settings_view.dart';
import 'package:sales_app/generated/l10n.dart';

 
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
  FlutterNativeSplash.remove();
}

class MainApp extends StatefulWidget {

    const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final Color _primaryColor = const Color.fromARGB(15, 63, 112, 239);

  final Color _accentColor = const Color.fromARGB(15, 60, 224, 194);
  
  @override
  void initState() {
     
     
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
       localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        primaryColor: _primaryColor,
        primaryColorDark: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: const LoginView(),
     
    );
  }
}

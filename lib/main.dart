import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/FunctionFireStoreProvider.dart';
import 'package:project1/FunctionProvider.dart';
import 'package:project1/LoginScrean/LoginScrean.dart';
import 'package:project1/Onboarding/Onboarding.dart';
import 'package:project1/FunctionAuthProvider.dart';
import 'package:project1/PageScrean/CountrolScrean.dart';
import 'package:project1/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  final prefs = await SharedPreferences.getInstance();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final showHome = prefs.getBool("showHome") ?? false;

  final login = prefs.getBool("login") ?? false;

  runApp(ChangeNotifierProvider<FunctionProvider>(
    create: (context) => FunctionProvider(),
    child: Provider<FunctionAuthProvider>(
      create: (context) => FunctionAuthProvider(),
      child: ChangeNotifierProvider<FunctionFireStoreProvider>(
        create: (context) => FunctionFireStoreProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: (showHome
              ? login
                  ? CountrolScren()
                  : LoginScrean()
              : Onboarding()),
        ),
      ),
    ),
  ));
}

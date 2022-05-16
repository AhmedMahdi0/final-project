import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project1/FunctionProvider.dart';
import 'package:project1/Onboarding/Onboarding.dart';
import 'package:provider/provider.dart';


void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(ChangeNotifierProvider<FunctionProvider>(
    create: (context) => FunctionProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

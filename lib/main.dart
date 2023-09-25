import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/views/HomeScreen2.dart';
import 'package:flutter_primeiros_passos/src/views/discipline_view.dart';
import 'package:flutter_primeiros_passos/src/views/forms_view.dart';
import 'package:flutter_primeiros_passos/src/views/homeScreen.dart';
import 'package:flutter_primeiros_passos/src/views/responsibleLogin.dart';
import 'package:flutter_primeiros_passos/src/views/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/disciplineDetail': (context) => DisciplineDetailScreen(),
        '/SplashScreen': (context) => SplashScreen(),
        '/BotaoAcessar': (context) => DisciplineDetailScreen(),
        "/forms": (context) => Forms(),
        "/HomeScreen2": (context) => HomeScreen2(),
        "/HomeScreen": (context) => HomeScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        // ignore: deprecated_member_use
        backgroundColor: ColorSystem.primaryColor,
      ),
      home: HomeScreen(),
    );
  }
}

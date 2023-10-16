import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/buttons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/cards.dart';
import 'package:flutter_primeiros_passos/src/views/home.dart';
import 'package:flutter_primeiros_passos/src/views/homeScreen2.dart';
import 'package:flutter_primeiros_passos/src/views/disciplineView.dart';
import 'package:flutter_primeiros_passos/src/views/formsView.dart';
import 'package:flutter_primeiros_passos/src/views/homeScreen.dart';
import 'package:flutter_primeiros_passos/src/views/manualEntry.dart';
import 'package:flutter_primeiros_passos/src/views/participantLogin.dart';
import 'package:flutter_primeiros_passos/src/views/responsibleLogin.dart';
import 'package:flutter_primeiros_passos/src/views/splashScreen.dart';
import 'package:flutter_primeiros_passos/src/views/viewQRcode.dart';

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
        "/Home": (context) => Home(),
        '/responsibleLogin': (context) => ResponsibleLogin(),
        '/participantLogin': (context) => ParticipantLogin(),
        '/viewQRcode': (context) => ViewQRcode(),
        '/manualEntry': (context) => ManualEntry(),
        '/popupError': (context) => PopupError(),
        '/popupValidation': (context) => PopupValidation(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        // ignore: deprecated_member_use
        backgroundColor: ColorSystem.primaryColor,
      ),
      home: Home(),
    );
  }
}

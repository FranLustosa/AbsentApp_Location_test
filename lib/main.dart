import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/forms.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/views/discipline_view.dart';
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
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        // ignore: deprecated_member_use
        backgroundColor: DesignSystem.primaryColor,
      ),
      home: Forms(),
    );
  }
}

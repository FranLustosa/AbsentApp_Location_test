import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DesignSystem.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: DesignSystem.primaryColor),
          height: 150,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Tela discipline",
              style: TextStyle(
                  color: DesignSystem.white,
                  fontSize: Tipografia.titleFontSize),
            ),
          ),
        ),
      ),
    );
  }
}

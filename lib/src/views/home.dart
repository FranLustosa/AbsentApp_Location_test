import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/cards.dart';
import 'package:flutter_primeiros_passos/src/views/formsView.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorSystem.primaryColor,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 400, // Largura desejada
            height: 200, // Altura desejada
          ),
          SizedBox(height: 30),
          Expanded(child: CardHomeButtons()),
        ],
      ),
    );
  }
}

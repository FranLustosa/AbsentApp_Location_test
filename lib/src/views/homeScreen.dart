import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorSystem.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icones.back),
          onPressed: () {},
          color: ColorSystem.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/primeira.png',
            width: 300, // Largura desejada
            height: 200, // Altura desejada
          ),
          Container(
            constraints:
                BoxConstraints(maxHeight: 500), // Defina uma altura máxima
            child: CardInformation(),
          ),
        ],
      ),
    );
  }
}

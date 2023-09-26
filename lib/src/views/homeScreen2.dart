import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/cards.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSystem.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorSystem.primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icones.back),
          onPressed: () {
            Navigator.of(context).pushNamed("/HomeScreen");
          },
          color: ColorSystem.white,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/image/segunda.png',
            width: 500, // Largura desejada
            height: 200, // Altura desejada
          ),
          Container(
            constraints:
                BoxConstraints(maxHeight: 500), // Defina uma altura máxima
            child: CardInformation2(),
          ),
        ],
      ),
    );
  }
}

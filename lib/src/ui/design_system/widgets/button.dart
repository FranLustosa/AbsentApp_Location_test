import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';

class BotaoAcessar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
          // Adicione a ação que você deseja executar ao pressionar o botão aqui.
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorSystem.primaryColor // Cor de fundo do botão
            ),
        child: Text(
          'Acessar',
          style: TextStyle(
            fontSize: Tipografia.textFontSize,
            color: ColorSystem.white,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Exemplo de Botão Flutter'),
      ),
      body: Center(
        child: BotaoAcessar(),
      ),
    ),
  ));
}

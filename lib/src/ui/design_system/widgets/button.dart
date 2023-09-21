import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';

class BotaoAcessar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          // Adicione a ação que você deseja executar ao pressionar o botão aqui.
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: DesignSystem.primaryColor // Cor de fundo do botão
            ),
        child: Text(
          'Acessar',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white, // Cor do texto do botão
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

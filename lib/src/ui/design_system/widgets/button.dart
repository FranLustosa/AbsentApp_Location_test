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
          Navigator.of(context).pushNamed("/disciplineDetail");
          // Adicione a ação que você deseja executar ao pressionar o botão aqui.
        },
        style: ElevatedButton.styleFrom(
            fixedSize: Size(400, 70),
            backgroundColor: ColorSystem.primaryColor,
            primary: ColorSystem.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
            // Cor de fundo do botão
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

class BotaoResponsavel extends StatelessWidget {
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
          'Sou responsável',
          style: TextStyle(
            fontSize: Tipografia.textFontSize,
            color: ColorSystem.white,
          ),
        ),
      ),
    );
  }
}

class BotaoParticipante extends StatelessWidget {
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
          'Sou Participante',
          style: TextStyle(
            fontSize: Tipografia.textFontSize,
            color: ColorSystem.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';

class ButtonAccessResponsible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed('/disciplineDetail'),
        child: Text("Acessar"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20), // Ajuste o valor conforme necessário
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: ColorSystem.primaryColor,
        ),
      ),
    );
  }
}

class ButtonAccessParticipant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed('/viewQRcode'),
        child: Text("Acessar"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20), // Ajuste o valor conforme necessário
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: ColorSystem.primaryColor,
        ),
      ),
    );
  }
}

class ButtonResponsible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () => Navigator.of(context).pushNamed('/responsibleLogin'),
        child: Text("Sou Responsável"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20), // Ajuste o valor conforme necessário
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: ColorSystem.primaryColor,
        ),
      ),
    );
  }
}

class ButtonParticipant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: OutlinedButton(
        onPressed: () => Navigator.of(context).pushNamed('/participantLogin'),
        // Ação quando o botão "Sou Participante" for pressionado
        child: Text(
          "Sou Participante",
          style: TextStyle(color: ColorSystem.primaryColor),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(20), // Ajuste o valor conforme necessário
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: BorderSide(color: ColorSystem.primaryColor),
        ),
      ),
    );
  }
}

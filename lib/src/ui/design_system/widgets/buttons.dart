import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';

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
          padding: EdgeInsets.all(20),
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
          padding: EdgeInsets.all(20),
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
          padding: EdgeInsets.all(20),
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
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: BorderSide(color: ColorSystem.primaryColor),
        ),
      ),
    );
  }
}

class ButtonManually extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: EdgeInsets.all(8),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Usuário não encontrado, insira a credencial de acesso manualmente.',
                        style: TextStyle(fontSize: 12),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: Icon(
                        Icones.close,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(); // Fechar o popup
                      },
                    ),
                  ],
                ),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Insira suas credenciais aqui',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorSystem.primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                actions: <Widget>[
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/popupError'),
                        child: Text("Confirmar presença"),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: ColorSystem.primaryColor,
                          minimumSize: Size(300, 60),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              );
            },
          );
        },
        child: Text("Inserir manualmente"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          backgroundColor: ColorSystem.primaryColor,
        ),
      ),
    );
  }
}

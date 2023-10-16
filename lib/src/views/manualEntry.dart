import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/discipline.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/buttons.dart';

class ManualEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Crie uma instância de DisciplineModel com valores definidos manualmente.
    final discipline = DisciplineModel(
      name: 'Nome da Disciplina',
      description: 'Descrição da Disciplina',
      location: 'Local da Disciplina',
      responsible: 'Responsável pela Disciplina',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("Realizar chamada",
            style: TextStyle(
                color: ColorSystem.textColor,
                fontSize: Tipografia.bodyTextStyle.fontSize)),
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        leading: InkWell(
          customBorder: CircleBorder(),
          onTap: () {
            Navigator.of(context).pushNamed("/disciplineDetail");
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorSystem.primaryColor,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "Você está realizando a chamada da disciplina De Inteligência Artificial. Aponte a câmera para o QRcode do aluno(a). "),
              SizedBox(height: 15),
              Image.asset(
                'assets/image/qrcode.png',
                width: 800, // Largura desejada
                height: 500, // Altura desejada
              ),
              SizedBox(height: 10),
              ButtonManually(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 8),
        Text('$label: $value'),
      ],
    );
  }
}

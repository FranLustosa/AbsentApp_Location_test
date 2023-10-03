import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/discipline.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';

class DisciplineDetailScreen extends StatelessWidget {
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
        backgroundColor: ColorSystem.primaryColor,
        elevation: 0,
        //automaticallyImplyLeading: false, para bloquear a volta
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Olá, Maria de Sousa!",
                          style: TextStyle(
                            color: ColorSystem.textColor,
                            fontSize: Tipografia.titleFontSize,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet consectetur",
                          style: TextStyle(
                            color: ColorSystem.textColor,
                            fontSize: Tipografia.textsmallFontSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 18),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/image/profile.png'),
                    radius: 25,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey, // Cor da linha de divisão
                        width: 1.0, // Largura da linha de divisão
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Disciplinas",
                  style: TextStyle(
                      color: ColorSystem.textDestaqueColor,
                      fontSize: Tipografia.textFontSize),
                ),
              ),
              Card(
                elevation: 0,
                color: ColorSystem.primaryColor
                    .withOpacity(0.20), // Defina a cor desejada
                margin: EdgeInsets.all(14.0),
                // Defina a margem desejada
                child: Container(
                  constraints: BoxConstraints(minHeight: 150),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildInfoRow(
                          Icons.push_pin_outlined,
                          'Local',
                          discipline.location,
                        ),
                      ),
                      // Adicione uma linha divisória
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _buildInfoRow(
                          Icons.groups_outlined,
                          'Responsável',
                          discipline.responsible,
                        ),
                      ),
                    ],
                  ),
                ),
              )
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

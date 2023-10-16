import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/discipline.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';

class DisciplineDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Olá, Maria de Sousa!",
                          style: TextStyle(
                            color: ColorSystem.textColor,
                            fontSize: Tipografia.titleFontSize,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Disciplinas",
                  style: TextStyle(
                      color: ColorSystem.textDestaqueColor,
                      fontSize: Tipografia.textFontSize),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('/manualEntry'),
                child: Card(
                  // card da disciplina
                  elevation: 0,
                  margin: EdgeInsets.all(14.0),
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      Container(
                        constraints: BoxConstraints(minHeight: 150),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/image/cardDisciplina.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: ColorSystem.primaryColor.withOpacity(0.60),
                        ),
                        constraints: BoxConstraints(minHeight: 150),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _buildInfoRow(
                              Icones.group,
                              'Nome',
                              discipline.name,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _buildInfoRow(
                              Icones.location,
                              'Local',
                              discipline.location,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _buildInfoRow(
                              Icones.person,
                              'Responsável',
                              discipline.responsible,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(width: 8),
        Text(
          '$label: $value',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

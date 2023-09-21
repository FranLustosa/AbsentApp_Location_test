import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/discipline.dart';

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
        title: Text('Detalhes da Disciplina'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Nome: ${discipline.name}'),
            Text('Descrição: ${discipline.description}'),
            SizedBox(height: 16),
            _buildInfoRow(
                Icons.push_pin_outlined, 'Local', discipline.location),
            _buildInfoRow(
                Icons.groups_outlined, 'Responsável', discipline.responsible),
          ],
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

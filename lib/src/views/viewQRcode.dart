import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/discipline.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';

class ViewQRcode extends StatelessWidget {
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
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image/qrcode.png',
                width: 800, // Largura desejada
                height: 500, // Altura desejada
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
        Icon(icon),
        SizedBox(width: 8),
        Text('$label: $value'),
      ],
    );
  }
}

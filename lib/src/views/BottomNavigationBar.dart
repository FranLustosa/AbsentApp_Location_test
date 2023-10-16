import 'package:flutter/material.dart';

class BottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigationBar(
      {required this.currentIndex,
      required this.onTap,
      required List<BottomNavigationBarItem> items});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.exit_to_app),
          label: 'Sair',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'Histórico',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          label: 'Ajuda',
        ),
      ],
    );
  }
}

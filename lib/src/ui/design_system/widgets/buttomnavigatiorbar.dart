import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/views/forms_view.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  MyBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Forms()),
          );
          onTap(index);
        } else if (index == 1) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Garçom solicitado!"),
                content: Text("Em instantes lhe atenderá, aguarde!"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Fechar",
                      style: TextStyle(
                        color: Color(0xFF00265F),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        } else if (index == 2) {
          // Navegar para a página de login
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Forms()),
          );
        }
      },
      backgroundColor: Color(0xFF00265F),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: InkWell(
            onTap: () {
              // Exibir o AlertDialog ao clicar em "Solicitar Garçom"
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Garçom solicitado!"),
                    content: Text("Em instantes lhe atenderá, aguarde!"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Fechar",
                          style: TextStyle(
                            color: Color(0xFF00265F),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Icon(
              Icons.help,
              color: currentIndex == 1 ? Colors.blueAccent : Colors.white,
            ),
          ),
          label: 'Solicitar Garçom',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.logout_outlined),
          label: 'Sair',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/button.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';

class CardInformation extends StatefulWidget {
  const CardInformation({super.key});

  @override
  State<CardInformation> createState() => _CardInformationState();
}

class _CardInformationState extends State<CardInformation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  height: 500,
                  decoration: BoxDecoration(
                      color: ColorSystem.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Center(
                          child: Text(
                            "Facilidade",
                            style: Tipografia.bodyTextStyle,
                          ),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor absentApp",
                        style: Tipografia.regularTextStyle,
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed("/HomeScreen2"),
                        child: Icon(Icones.next),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), // Torna o botão redondo
                          backgroundColor: ColorSystem.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardInformation2 extends StatefulWidget {
  const CardInformation2({super.key});

  @override
  State<CardInformation2> createState() => _CardInformation2State();
}

class _CardInformation2State extends State<CardInformation2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  height: 500,
                  decoration: BoxDecoration(
                      color: ColorSystem.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Center(
                          child: Text(
                            "Rapidez",
                            style: Tipografia.bodyTextStyle,
                          ),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor absentApp",
                        style: Tipografia.regularTextStyle,
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed("/Home"),
                        child: Icon(Icones.next),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), // Torna o botão redondo
                          backgroundColor: ColorSystem.primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardHomeButtons extends StatelessWidget {
  const CardHomeButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorSystem.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                " Bem-vindo(a) ao Absent ",
                style: TextStyle(fontSize: Tipografia.titleFontSize),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Center(
              child: Text(
                " Seu app de frequência acadêmica ",
                style: TextStyle(fontSize: Tipografia.textsmallFontSize),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonResponsible(),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonParticipant(),
          ),
        ],
      ),
    );
  }
}

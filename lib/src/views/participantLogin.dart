import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/buttons.dart';
import 'package:flutter_primeiros_passos/src/viewmodels/FormsViewModel.dart';

class ParticipantLogin extends StatefulWidget {
  // Transforme a classe em StatefulWidget
  @override
  _ParticipantLoginState createState() => _ParticipantLoginState();
}

class _ParticipantLoginState extends State<ParticipantLogin> {
  // Crie a classe de estado _ParticipantLoginState

  final FormsViewModel viewModel = FormsViewModel();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameEC = TextEditingController();
  final TextEditingController passwordEC = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          leading: InkWell(
            customBorder: CircleBorder(),
            onTap: () {
              Navigator.of(context).pushNamed("/Home");
            },
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorSystem.primaryColor, // Cor do botão azul
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back, // Ícone de seta para trás
                    color: Colors.white,
                    size: 24, // Cor do ícone branco
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " Acessar QRcode ",
                    style: TextStyle(fontSize: Tipografia.titleFontSize),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " Insira suas credencias para acessar o absent ",
                    style: TextStyle(fontSize: Tipografia.textsmallFontSize),
                  ),
                ),
                Form(
                    key: viewModel.formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(14.10),
                      child: Column(
                        children: [
                          customTextFormField(
                            controller: nameEC,
                            labelText: "Credencial de Acesso",
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return "Campo não foi preenchido";
                              }
                            },
                            obscureText: false,
                            togglePasswordVisibility: () {},
                          ),
                          SizedBox(height: 30),
                          SizedBox(
                            width: double.infinity,
                            child: ButtonAccessParticipant(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value ?? false;
                                    });
                                  },
                                  activeColor: Color(0xFF00265F),
                                  side: BorderSide(
                                      width: 1.3,
                                      color: ColorSystem.borderColor),
                                ),
                                Text(
                                  "Salvar QRcode",
                                  style: TextStyle(
                                      fontSize: Tipografia.textsmallFontSize,
                                      color: ColorSystem.textDestaqueColor),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ));
  }
}

Widget customTextFormField({
  required TextEditingController controller,
  required String labelText,
  FormFieldValidator<String>? validator,
  bool obscureText = true,
  required VoidCallback togglePasswordVisibility,
}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    decoration: InputDecoration(
      labelText: labelText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      suffixIcon: labelText == "Senha"
          ? IconButton(
              onPressed: () {
                togglePasswordVisibility();
              },
              icon: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
              ),
            )
          : null, // Só mostra o ícone se o campo for de senha
    ),
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Campo não foi preenchido";
      }
      return null; // Retorna null quando o campo está preenchido corretamente
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/button.dart';
import 'package:flutter_primeiros_passos/src/viewmodels/FormsViewModel.dart';

class Forms extends StatelessWidget {
  final FormsViewModel viewModel = FormsViewModel();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameEC = TextEditingController();
  final TextEditingController passwordEC = TextEditingController();

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
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                " Acesse sua conta ",
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
                      labelText: "Nome",
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Campo não foi preenchido";
                        }
                      },
                      obscureText: false,
                      togglePasswordVisibility: () {},
                    ),
                    SizedBox(height: 20),
                    customTextFormField(
                      controller: passwordEC,
                      labelText: "Senha",
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Campo não foi preenchido";
                        }
                      },
                      togglePasswordVisibility: () {
                        viewModel.togglePasswordVisibility();
                      },
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ButtonAccessResponsible(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        " Esqueci minha senha ",
                        style: TextStyle(
                            color: ColorSystem.primaryColor,
                            fontSize: Tipografia.textsmallFontSize),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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

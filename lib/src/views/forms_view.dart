import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/button.dart';
import 'package:flutter_primeiros_passos/src/viewmodels/FormsViewModel.dart';

class Forms extends StatelessWidget {
  final FormsViewModel viewModel = FormsViewModel();
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSystem.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          IconButton(
            icon: Icon(
              Icones.back,
              color: ColorSystem.primaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
              // Adicione a lógica para voltar à tela inicial aqui
            },
          ),
          Text(
            " Acesse sua conta ",
            style: TextStyle(fontSize: Tipografia.titleFontSize),
          ),
          Form(
            key: viewModel.formKey,
            child: Padding(
              padding: const EdgeInsets.all(14.10),
              child: Column(
                children: [
                  customTextFormField(
                    controller: viewModel.nameEC,
                    labelText: "Nome",
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Campo não foi preenchido";
                      }
                    },
                    obscureText: false,
                    togglePasswordVisibility:
                        () {}, // Nome não é um campo de senha
                  ),
                  SizedBox(height: 20),
                  customTextFormField(
                    controller: viewModel.passwordEC,
                    labelText: "Senha",
                    obscureText: viewModel.isObscure,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Campo não foi preenchido";
                      }
                    },
                    togglePasswordVisibility: () {
                      viewModel.togglePasswordVisibility();
                    },
                  ),
                  SizedBox(height: 10),
                  BotaoAcessar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customTextFormField({
  required TextEditingController controller,
  required String labelText,
  FormFieldValidator<String>? validator,
  bool obscureText = false,
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
    validator: validator,
  );
}

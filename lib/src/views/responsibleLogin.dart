import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/widgets/button.dart';
import 'package:flutter_primeiros_passos/src/viewmodels/FormsViewModel.dart';

class ResponsibleLogin extends StatefulWidget {
  final FormsViewModel viewModel = FormsViewModel();
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwordEC = TextEditingController();

  @override
  State<ResponsibleLogin> createState() => _ResponsibleLoginState();
}

class _ResponsibleLoginState extends State<ResponsibleLogin> {
  @override
  Widget build(BuildContext context) {
    var viewModel;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorSystem.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icones.back),
            onPressed: () {},
            color: ColorSystem.primaryColor,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Acesse sua conta ",
                style: Tipografia.bodyTextStyle,
                selectionColor: ColorSystem.primaryColor,
              ),
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
                    SizedBox(height: 30),
                    BotaoAcessar(),
                  ],
                ),
              ),
            ),
          ],
        ));
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

// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/colors.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/fonts.dart';
import 'package:flutter_primeiros_passos/src/ui/design_system/themes/icons.dart';

class Forms extends StatefulWidget {
  Forms({Key? key}) : super(key: key);

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final passwordEC = TextEditingController();
  bool isObscure = true; // Controla a visibilidade da senha

  @override
  void dispose() {
    super.dispose();
    nameEC.dispose();
    passwordEC.dispose();
  }

  // teste - passa para a arquitetura
  Widget customTextFormField({
    required TextEditingController controller,
    required String labelText,
    FormFieldValidator<String>? validator,
    bool obscureText = false,
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
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icones.NotViewPassword : Icones.ViewPassword,
                ),
              )
            : null, // Só mostra o ícone se o campo for de senha
      ),
      validator: validator,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          IconButton(
            icon: Icon(
              Icones.back,
              color: DesignSystem.primaryColor,
            ),
            onPressed: () {
              Navigator.pop(context);
              // Adicione a lógica para voltar à tela inicial aqui
            },
          ),
          Text(
            " Acesse sua conta ",
            style: TextStyle(fontSize: Tipografia.bodyFontSize),
          ),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(14.10),
              child: Column(
                children: [
                  customTextFormField(
                    controller: nameEC,
                    labelText: "Usuário",
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Campo não foi preenchido";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  customTextFormField(
                    controller: passwordEC,
                    labelText: "Senha",
                    obscureText: isObscure,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return "Campo não foi preenchido";
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = "Formulário Inválido";

                      if (formValid) {
                        message = "Formulário Válido: (Name: ${nameEC.text})";
                        Navigator.pushNamed(context, '/disciplineDetail');
                      }

                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    child: Text(
                      "Acessar",
                      selectionColor: DesignSystem.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

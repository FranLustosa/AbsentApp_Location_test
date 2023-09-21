import 'package:flutter/material.dart';
import 'package:flutter_primeiros_passos/src/models/login_model.dart';

class FormsViewModel extends ChangeNotifier {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameEC = TextEditingController();
  final TextEditingController passwordEC = TextEditingController();
  bool isObscure = true;

  LoginModel? getUser() {
    if (formKey.currentState?.validate() ?? false) {
      return LoginModel(usuario: nameEC.text, senha: passwordEC.text);
    }
    return null;
  }

  void togglePasswordVisibility() {
    isObscure = !isObscure;
    notifyListeners();
  }
}

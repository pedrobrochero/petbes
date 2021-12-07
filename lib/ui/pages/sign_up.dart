import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/auth_controller.dart';
import 'package:petbes/domain/models/status/status.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/loading_layer_component.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

class SignUpUI extends StatefulWidget {
  static const route = 'sign_up';
  const SignUpUI({Key? key}) : super(key: key);

  @override
  State<SignUpUI> createState() => _SignUpUIState();
}

class _SignUpUIState extends State<SignUpUI> {
  final S s = Get.find();

  final AuthController authController = Get.find();

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _password1Controller = TextEditingController();
  final _password2Controller = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _password1Controller.dispose();
    _password2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
            child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.pets, size: 96, color: Colors.orange),
                Spacers.verticalM,
                Text(s.appName, style: Theme.of(context).textTheme.headline3),
                Spacers.verticalS,
                Text(s.signUpMessage,
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center),
                Spacers.verticalM,
                // Nombre
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: s.name),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return s.formExEmpty;
                    }
                  },
                ),
                Spacers.verticalM,
                // Email
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: s.mail),
                  validator: (value) {
                    if (GetUtils.isNull(value)) {
                      return s.formExEmpty;
                    }
                    if (!GetUtils.isEmail(value!)) {
                      return s.authExInvalidEmail;
                    }
                  },
                ),
                Spacers.verticalM,
                // Password
                TextFormField(
                  controller: _password1Controller,
                  decoration: InputDecoration(labelText: s.password),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return s.formExEmpty;
                    }
                  },
                ),
                Spacers.verticalM,
                // Confirm password
                TextFormField(
                  controller: _password2Controller,
                  decoration: InputDecoration(labelText: s.confirmPassword),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return s.formExEmpty;
                    }
                    if (_password1Controller.text !=
                        _password2Controller.text) {
                      return s.exPasswordDoNotMatch;
                    }
                  },
                ),
                Spacers.verticalM,
                // Submit
                ElevatedButton(onPressed: _submit, child: Text(s.register))
              ],
            ),
          ),
        ))),
        Obx(() => authController.signupStatus.value.isLoading
            ? const LoadingLayer()
            : const SizedBox())
      ],
    ));
  }

  _submit() {
    final form = _formKey.currentState;
    if (form?.validate() == true) {
      authController.signup(_nameController.text, _emailController.text,
          _password1Controller.text);
      _password1Controller.clear();
      _password2Controller.clear();
    }
  }
}

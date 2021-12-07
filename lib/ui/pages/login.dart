import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/controllers/auth_controller.dart';
import 'package:petbes/domain/models/status/status.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/loading_layer_component.dart';
import 'package:petbes/ui/_components/spacers_components.dart';
import 'package:petbes/ui/pages/sign_up.dart';

class LoginUI extends StatefulWidget {
  static const route = 'login';
  const LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final AuthController authController = Get.find();
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final S s = Get.find();
    return Scaffold(
        body: Stack(
      children: [
        Center(
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        const Icon(Icons.pets, size: 96, color: Colors.orange),
                        Spacers.verticalM,
                        Text(s.appName,
                            style: Theme.of(context).textTheme.headline3),
                        Spacers.verticalS,
                        Text(s.slogan,
                            style: Theme.of(context).textTheme.subtitle2),
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
                          controller: _passwordController,
                          decoration: InputDecoration(labelText: s.password),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return s.formExEmpty;
                            }
                          },
                        ),
                        Spacers.verticalM,
                        // Submit
                        ElevatedButton(
                            onPressed: _submit, child: Text(s.login)),
                        Spacers.verticalM,
                        // Sign up
                        GestureDetector(
                            onTap: () =>
                                Navigator.pushNamed(context, SignUpUI.route),
                            child: Text(
                              s.signUpNow,
                              style: Theme.of(context).textTheme.overline,
                            ))
                      ]),
                    )))),
        Obx(() {
          if (authController.loginStatus.value.isLoading) {
            return const LoadingLayer();
          }
          return Container();
        })
      ],
    ));
  }

  _submit() {
    // TODO remove this mock
    if (kDebugMode) {
      if (_emailController.text.isEmpty) {
        _emailController.text = 'test1@test.com';
      }
      if (_passwordController.text.isEmpty) {
        _passwordController.text = '123123';
      }
    }
    final form = _formKey.currentState;
    if (form?.validate() == true) {
      authController.login(_emailController.text, _passwordController.text);
      _passwordController.clear();
    }
  }
}

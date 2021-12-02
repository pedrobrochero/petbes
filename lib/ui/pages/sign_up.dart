import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

import 'feed.dart';

class SignUpUI extends StatelessWidget {
  static const route = 'sign_up';
  const SignUpUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S s = Get.find();
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Padding(
      padding: const EdgeInsets.all(16),
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
          TextField(
            decoration: InputDecoration(labelText: s.name),
          ),
          Spacers.verticalM,
          // Email
          TextField(
            decoration: InputDecoration(labelText: s.mail),
          ),
          Spacers.verticalM,
          // Password
          TextField(
            decoration: InputDecoration(labelText: s.password),
          ),
          Spacers.verticalM,
          // Confirm password
          TextField(
            decoration: InputDecoration(labelText: s.confirmPassword),
          ),
          Spacers.verticalM,
          // Submit
          ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, FeedUI.route, (_) => false),
              child: Text(s.register))
        ],
      ),
    ))));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/ui/_components/spacers_components.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/sign_up.dart';

class LoginUI extends StatelessWidget {
  static const route = 'login';
  const LoginUI({Key? key}) : super(key: key);

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
          Text(s.slogan, style: Theme.of(context).textTheme.subtitle2),
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
          // Submit
          ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, FeedUI.route, (_) => false),
              child: Text(s.login)),
          Spacers.verticalM,
          // Sign up
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignUpUI.route),
            child: Text(
              s.signUpNow,
              style: Theme.of(context).textTheme.overline,
            ),
          )
        ],
      ),
    ))));
  }
}

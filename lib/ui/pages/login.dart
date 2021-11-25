import 'package:flutter/material.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/service_locator.dart';
import 'package:petbes/ui/_components/spacers_components.dart';

class LoginUI extends StatelessWidget {
  static const route = 'login';
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final s = sl<S>();
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
          ElevatedButton(onPressed: () {}, child: Text(s.login))
        ],
      ),
    ))));
  }
}

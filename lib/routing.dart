import 'package:flutter/material.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/login.dart';
import 'package:petbes/ui/pages/sign_up.dart';
import 'package:petbes/ui/pages/stories.dart';

import 'ui/pages/home.dart';

final routes = <String, WidgetBuilder>{
  FeedUI.route: (BuildContext context) => const FeedUI(),
  StoriesUI.route: (BuildContext context) => const StoriesUI(),
  SignUpUI.route: (BuildContext context) => const SignUpUI(),
  LoginUI.route: (BuildContext context) => const LoginUI(),
  HomeUI.route: (BuildContext context) => const HomeUI(),
};

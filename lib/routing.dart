import 'package:flutter/material.dart';
import 'package:petbes/ui/pages/adop_feed.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/login.dart';
import 'package:petbes/ui/pages/sign_up.dart';
import 'package:petbes/ui/pages/stories.dart';

final routes = <String, WidgetBuilder>{
  AdoptFeedUI.route: (BuildContext context) => AdoptFeedUI(),
  FeedUI.route: (BuildContext context) => FeedUI(),
  StoriesUI.route: (BuildContext context) => StoriesUI(),
  SignUpUI.route: (BuildContext context) => const SignUpUI(),
  LoginUI.route: (BuildContext context) => const LoginUI(),
};

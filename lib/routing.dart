import 'package:flutter/material.dart';
import 'package:petbes/ui/pages/adop_feed.dart';
import 'package:petbes/ui/pages/chat_list.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/login.dart';
import 'package:petbes/ui/pages/settings.dart';
import 'package:petbes/ui/pages/sign_up.dart';
import 'package:petbes/ui/pages/stories.dart';

final routes = <String, WidgetBuilder>{
  SettingsUI.route: (BuildContext context) => const SettingsUI(),
  ChatListUI.route: (BuildContext context) => const ChatListUI(),
  AdoptFeedUI.route: (BuildContext context) => AdoptFeedUI(),
  FeedUI.route: (BuildContext context) => const FeedUI(),
  StoriesUI.route: (BuildContext context) => const StoriesUI(),
  SignUpUI.route: (BuildContext context) => const SignUpUI(),
  LoginUI.route: (BuildContext context) => const LoginUI(),
};

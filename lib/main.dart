import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'misc/my_bloc_observer.dart';
import 'misc/service_locator.dart' as service_locator;
import 'misc/utils.dart';
import 'ui/my_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await service_locator.init();

  runApp(const MyApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  myLog('FCM: Handling a background message ${message.messageId}');
}

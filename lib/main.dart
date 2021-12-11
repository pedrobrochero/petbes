import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:petbes/ui/pages/feed.dart';
import 'package:petbes/ui/pages/login.dart';
import 'package:petbes/ui/pages/splashscreen.dart';

import '../generated/l10n.dart';
import '../misc/service_locator.dart' as sl;
import '../routing.dart' as routing;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Async initialization
    final initializationFutures = Future.wait([
      Firebase.initializeApp(),
      sl.init(),
    ]);
    return GetMaterialApp(
      title: 'Petbes',
      debugShowCheckedModeBanner: !kReleaseMode,
      home: FutureBuilder(
          future: initializationFutures,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              final S s = Get.find();
              return Scaffold(body: Center(child: Text(s.exInitializacion)));
            }
            if (snapshot.connectionState == ConnectionState.done ||
                snapshot.connectionState == ConnectionState.none) {
              return StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return const FeedUI();
                  } else {
                    return const LoginUI();
                  }
                },
              );
            }
            return const SplashScreen();
          }),
      routes: routing.routes,
      theme: Get.find<ThemeData>(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

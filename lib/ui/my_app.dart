import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:petbes/ui/pages/settings.dart';

import '../generated/l10n.dart';
import '../routing.dart' as routing;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Petbes',
        debugShowCheckedModeBanner: !kReleaseMode,
        home: SettingsUI(),
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

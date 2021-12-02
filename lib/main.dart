import 'package:flutter/material.dart';

import 'misc/service_locator.dart' as service_locator;
import 'ui/my_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  service_locator.init();
  runApp(const MyApp());
}

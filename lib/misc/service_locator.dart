import 'package:get/get.dart';
import 'package:petbes/domain/controllers/adopt_controller.dart';
import 'package:petbes/domain/controllers/auth_controller.dart';
import 'package:petbes/domain/controllers/chat_controller.dart';
import 'package:petbes/domain/controllers/chat_list_controller.dart';
import 'package:petbes/domain/controllers/feed_controller.dart';
import 'package:petbes/domain/controllers/location_controller.dart';
import 'package:petbes/domain/controllers/stories_controller.dart';

import '../generated/l10n.dart';
import '../ui/theme.dart';

Future<void> init() async {
  Get.put(AppTheme.mainTheme());
  Get.lazyPut(() => S.current);
  // Controllers
  Get.lazyPut(() => AuthController());
  Get.lazyPut(() => FeedController());
  Get.lazyPut(() => StoriesController());
  Get.lazyPut(() => AdoptController());
  Get.lazyPut(() => ChatListController());
  Get.lazyPut(() => ChatController());
  Get.lazyPut(() => LocationController());
}

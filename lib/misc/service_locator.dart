import 'package:get/get.dart';
import 'package:petbes/data/adoption_service.dart';
import 'package:petbes/data/firestore._service.dart';
import 'package:petbes/data/image_picker_service.dart';
import 'package:petbes/data/shared_prefs_service.dart';
import 'package:petbes/data/storage_service.dart';
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
  Get.put(SharedPrefsService());
  Get.lazyPut(() => S.current);
  // Service
  Get.lazyPut(() => FirestoreService());
  Get.lazyPut(() => FirebaseStorageService());
  Get.lazyPut(() => ImagePickerService());
  Get.lazyPut(() => AdoptionService());
  // Controllers
  Get.lazyPut(() => AuthController());
  Get.lazyPut(() => FeedController());
  Get.lazyPut(() => StoriesController());
  Get.lazyPut(() => AdoptController());
  Get.lazyPut(() => ChatListController());
  Get.lazyPut(() => ChatController());
  Get.lazyPut(() => LocationController());
}

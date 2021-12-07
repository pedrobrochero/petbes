import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/status/status.dart';
import 'package:petbes/generated/l10n.dart';
import 'package:petbes/misc/logging.dart';

class AuthController extends GetxController with Logging {
  final FirebaseAuth _firebase = FirebaseAuth.instance;
  final S s = Get.find();

  final loginStatus = const Status.iddle().obs;
  final signupStatus = const Status.iddle().obs;

  login(String email, String password) async {
    try {
      loginStatus.value = const Status.loading();
      await _firebase.signInWithEmailAndPassword(
          email: email, password: password);
      loginStatus.value = const Status.success();
    } catch (e) {
      loginStatus.value = Status.error(s.exUnknown);
      loginStatus.value = const Status.iddle();
      log.e(e);
    }
  }

  signup(String name, String email, String password) async {
    try {
      signupStatus.value = const Status.loading();
      final userCredentials = await _firebase.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.back();
      await userCredentials.user?.updateDisplayName(name);
      signupStatus.value = const Status.success();
    } catch (e) {
      signupStatus.value = Status.error(s.exUnknown);
      signupStatus.value = const Status.iddle();
      log.e(e);
    }
  }

  logout() async {
    _firebase.signOut();
  }
}

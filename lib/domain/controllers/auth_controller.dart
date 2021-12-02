import 'package:get/get.dart';

class AuthController extends GetxController {
  final _isAuthenticated = false.obs;

  bool get isAuthenticated => _isAuthenticated.value;

  login() {
    _isAuthenticated.value = true;
  }

  signup() {
    _isAuthenticated.value = true;
  }

  logout() {
    _isAuthenticated.value = false;
  }
}

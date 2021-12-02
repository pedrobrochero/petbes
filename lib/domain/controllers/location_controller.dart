import 'package:get/get.dart';

class LocationController extends GetxController {
  final _location = 1.obs;
  final _nearUsers = <int>[].obs;

  int get location => _location.value;
  List<int> get nearUsers => _nearUsers;

  getMyLocation() {}

  getNearUsers() {}

  postLocation() {}
}

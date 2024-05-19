import 'package:get/get.dart';
import 'package:petbes/data/adoption_service.dart';
import 'package:petbes/domain/models/adopt_post/adopt_post.dart';
import 'package:petbes/misc/logging.dart';

class AdoptController extends GetxController with Logging {
  AdoptController() {
    getData(isInitial: true);
  }
  final AdoptionService _adoptApi = Get.find();
  final _posts = <AdoptPost>[].obs;
  int currentPage = 1;
  bool gettingData = false;

  List<AdoptPost> get entries => _posts;

  getData({bool isInitial = false}) async {
    if (gettingData) {
      return;
    }
    gettingData = true;
    try {
      log.d('getting data');
      if (isInitial) {
        _posts.clear();
        currentPage = 1;
      }
      final list = await _adoptApi.getPets(currentPage);
      currentPage++;
      _posts.addAll(list);
    } catch (e) {
      log.e(e);
    } finally {
      gettingData = false;
    }
  }
}

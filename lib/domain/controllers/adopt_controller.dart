import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/adopt_post/adopt_post.dart';

class AdoptController extends GetxController {
  AdoptController() {
    getInitialData();
  }
  final _posts = <AdoptPost>[].obs;

  List<AdoptPost> get entries => _posts;

  getInitialData() {
    final list = <AdoptPost>[];
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    list.add(_dummyPost());
    entries.addAll(list);
  }

  AdoptPost _dummyPost() {
    return AdoptPost(
        id: 'id',
        imageUrl:
            'https://picsum.photos/id/${faker.randomGenerator.integer(1000)}/500',
        city: faker.address.city(),
        petAge: faker.randomGenerator.integer(14),
        petName: faker.person.firstName());
  }
}

import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/story/story.dart';

class StoriesController extends GetxController {
  StoriesController() {
    postStory();
  }
  final _stories = <Story>[].obs;

  List<Story> get entries => _stories;

  getInitialData() {}

  postStory() {
    entries.add(_dummyEntry());
  }

  Story _dummyEntry() {
    return Story(
        id: 'id',
        posterId: 'posterId',
        postedAt: faker.date.dateTime(),
        posterName: faker.person.name(),
        content: faker.lorem.sentence());
  }
}

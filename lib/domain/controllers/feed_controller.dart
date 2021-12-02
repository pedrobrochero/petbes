import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:petbes/domain/models/post/post.dart';

class FeedController extends GetxController {
  final _posts = <Post>[].obs;

  List<Post> get entries => _posts;

  FeedController() {
    postPost();
  }

  getInitialData() {}

  postPost() {
    entries.insert(0, _dummyPost());
  }

  Post _dummyPost() {
    return Post(
        id: 'id',
        imageUrl:
            'https://picsum.photos/id/${faker.randomGenerator.integer(1000)}/500',
        posterId: 'posterId',
        postedAt: faker.date.dateTime(),
        posterName: faker.person.name(),
        caption: faker.lorem.sentences(2).join(' '));
  }
}

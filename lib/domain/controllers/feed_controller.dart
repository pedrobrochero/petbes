import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:petbes/data/firestore._service.dart';
import 'package:petbes/data/storage_service.dart';
import 'package:petbes/domain/models/post/post.dart';
import 'package:petbes/misc/logging.dart';
import 'package:uuid/uuid.dart';

class FeedController extends GetxController with Logging {
  final _posts = <Post>[].obs;

  List<Post> get entries => _posts;
  final _uuid = const Uuid();
  final _user = FirebaseAuth.instance.currentUser!;
  final FirestoreService _firestore = Get.find();
  final FirebaseStorageService _storage = Get.find();

  getInitialData() async {
    try {
      _posts.clear();
      final list = await _firestore.getList<Post>('posts', handler: (json) {
        json['postedAt'] =
            (json['postedAt'] as Timestamp).toDate().toIso8601String();
        return Post.fromJson(json);
      });
      _posts.addAll(list);
    } catch (e) {
      log.e(e);
    }
  }

  postPost(String? content, File file) async {
    try {
      final url = await _storage.uploadImage(file);
      final id = _uuid.v4();
      final json = Post(
              id: id,
              posterId: _user.uid,
              posterName: _user.displayName!,
              caption: content,
              imageUrl: url,
              postedAt: DateTime.now())
          .toJson();
      json['postedAt'] = Timestamp.now();
      await _firestore.add('posts', json);
      await getInitialData();
    } catch (e) {
      log.e(e);
    }
  }
}

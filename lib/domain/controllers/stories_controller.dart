import 'dart:math' hide log;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:petbes/data/firestore._service.dart';
import 'package:petbes/domain/models/story/story.dart';
import 'package:petbes/misc/logging.dart';
import 'package:uuid/uuid.dart';

class StoriesController extends GetxController with Logging {
  final FirestoreService _firestore = Get.find();
  final _uuid = const Uuid();
  final _user = FirebaseAuth.instance.currentUser!;

  final _stories = <Story>[].obs;

  List<Story> get entries => _stories;

  getInitialData() async {
    try {
      _stories.clear();
      final list = await _firestore.getList<Story>('stories', handler: (json) {
        json['postedAt'] =
            (json['postedAt'] as Timestamp).toDate().toIso8601String();
        return Story.fromJson(json);
      });
      _stories.addAll(list);
    } catch (e) {
      log.e(e);
    }
  }

  postStory(String content) async {
    try {
      final id = _uuid.v4();
      final json = Story(
              id: id,
              content: content,
              posterId: _user.uid,
              posterName: _user.displayName!,
              color: Colors.primaries
                  .elementAt(Random().nextInt(Colors.primaries.length))
                  .shade100,
              postedAt: DateTime.now())
          .toJson();
      json['postedAt'] = Timestamp.now();
      await _firestore.add('stories', json);
      await getInitialData();
    } catch (e) {
      log.e(e);
    }
  }
}

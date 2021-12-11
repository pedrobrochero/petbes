import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadImage(File file) async {
    final task = await _storage
        .ref('images/${DateTime.now().microsecondsSinceEpoch}')
        .putFile(file);

    return await task.ref.getDownloadURL();
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final _instance = FirebaseFirestore.instance;

  Future<void> add(String path, Map<String, dynamic> data) async {
    final collection = _instance.collection(path);
    await collection.add(data);
  }

  Future<List<T>> getList<T>(String path,
      {T Function(Map<String, dynamic>)? handler}) async {
    final collection = _instance.collection(path).where('postedAt',
        isGreaterThanOrEqualTo:
            DateTime.now().subtract(const Duration(days: 1)));
    final docs = (await collection.get()).docs;
    try {
      return docs
          .map<T>((e) => handler != null ? handler(e.data()) : e.data() as T)
          .toList();
    } catch (e) {
      throw 'Casting failure';
    }
  }
}

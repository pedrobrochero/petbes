import 'package:freezed_annotation/freezed_annotation.dart';

part 'adopt_post.freezed.dart';
part 'adopt_post.g.dart';

@freezed
abstract class AdoptPost with _$AdoptPost {
  const factory AdoptPost({
    required String id,
    required String imageUrl,
    required String petName,
    required String city,
    required int petAge,
  }) = _AdoptPost;

  factory AdoptPost.fromJson(Map<String, dynamic> json) =>
      _$AdoptPostFromJson(json);
}

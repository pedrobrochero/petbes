import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'adopt_post.freezed.dart';
part 'adopt_post.g.dart';

@freezed
abstract class AdoptPost with _$AdoptPost {
  const factory AdoptPost({
    required String id,
    required String imageUrl,
    required String petName,
    required Sex sex,
    required DateTime? petAge,
  }) = _AdoptPost;

  factory AdoptPost.fromJson(Map<String, dynamic> json) =>
      _$AdoptPostFromJson(json);
}

enum Sex {
  @JsonValue('Male')
  male,
  @JsonValue('Female')
  female,
}

extension SexExt on Sex {
  Icon get icon {
    switch (this) {
      case Sex.female:
        return const Icon(Icons.female);
      case Sex.male:
        return const Icon(Icons.male);
    }
  }
}

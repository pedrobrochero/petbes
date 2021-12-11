import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
abstract class Story with _$Story {
  const factory Story({
    required String id,
    required String content,
    required String posterId,
    required String posterName,
    required DateTime postedAt,
    @JsonKey(toJson: colorToJson, fromJson: colorFromJson) required Color color,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}

String colorToJson(Color color) => color.value.toString();
Color colorFromJson(String s) => Color(int.parse(s));

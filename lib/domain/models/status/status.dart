import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
abstract class Status with _$Status {
  const factory Status.loading() = LoadingStatus;
  const factory Status.iddle() = IddleStatus;
  const factory Status.success() = SuccessStatus;
  const factory Status.error(String message) = ErrorStatus;
}

extension StatusExt on Status {
  bool get isLoading => this is LoadingStatus;
  bool get isIddle => this is IddleStatus;
  bool get isError => this is ErrorStatus;
  bool get isSuccess => this is SuccessStatus;
}

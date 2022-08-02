import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime, int> {
  const TimestampConverter();

  @override
  DateTime fromJson(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  }

  @override
  int toJson(DateTime date) => date.millisecondsSinceEpoch ~/ 1000;
}

class TimestampOrNullConverter implements JsonConverter<DateTime?, int?> {
  const TimestampOrNullConverter();

  @override
  DateTime? fromJson(int? timestamp) {
    return timestamp != null
        ? DateTime.fromMillisecondsSinceEpoch(timestamp * 1000)
        : null;
  }

  @override
  int? toJson(DateTime? date) =>
      date == null ? null : date.millisecondsSinceEpoch ~/ 1000;
}

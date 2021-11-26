import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Activity {
  final String name;
  final int duration;

  String get activityName => name;

  int get activityDuration => duration;

  const Activity({required this.name, required this.duration});

  factory Activity.fromJson(Map<String, dynamic> json) => _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);
}

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      name: json['name'] as String,
      duration: json['duration'] as int,
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'name': instance.name,
      'duration': instance.duration,
    };

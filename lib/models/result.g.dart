// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result()
    ..count = json['count'] as int
    ..next = json['next'] as String
    ..previous = json['previous'] as String
    ..results = (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

import 'package:json_annotation/json_annotation.dart';
import 'pokemon.dart';

part 'result.g.dart';

@JsonSerializable()
class Result {
      Result();

  int count;
  String next;
  String previous;
  List<Pokemon> results;

  factory Result.fromJson(Map<String,dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

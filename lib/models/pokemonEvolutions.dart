import 'package:json_annotation/json_annotation.dart';


part 'pokemonEvolutions.g.dart';

@JsonSerializable()
class PokemonEvolutions {
      PokemonEvolutions();

  @JsonKey(name: 'baby_trigger_item') dynamic babyTriggerItem;
  Chain chain;
  int id;

  factory PokemonEvolutions.fromJson(Map<String,dynamic> json) => _$PokemonEvolutionsFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonEvolutionsToJson(this);
}

@JsonSerializable()
class Chain {
      Chain();

  @JsonKey(name: 'evolution_details') List<dynamic> evolutionDetails;
  @JsonKey(name: 'evolves_to') List<dynamic> evolvesTo;
  @JsonKey(name: 'is_baby') bool isBaby;
  @JsonKey(name: 'species_new') SpeciesNew speciesNew;

  factory Chain.fromJson(Map<String,dynamic> json) => _$ChainFromJson(json);
  Map<String, dynamic> toJson() => _$ChainToJson(this);
}

@JsonSerializable()
class SpeciesNew {
      SpeciesNew();

  String name;
  String url;

  factory SpeciesNew.fromJson(Map<String,dynamic> json) => _$SpeciesNewFromJson(json);
  Map<String, dynamic> toJson() => _$SpeciesNewToJson(this);
}

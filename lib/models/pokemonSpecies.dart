import 'package:json_annotation/json_annotation.dart';


part 'pokemonSpecies.g.dart';

@JsonSerializable()
class PokemonSpecies {
      PokemonSpecies();

  @JsonKey(name: 'base_happiness') int baseHappiness;
  @JsonKey(name: 'capture_rate') int captureRate;
  Color color;
  @JsonKey(name: 'egg_groups') List<dynamic> eggGroups;
  @JsonKey(name: 'evolution_chain') EvolutionChain evolutionChain;
  @JsonKey(name: 'evolves_from_species') EvolvesFromSpecies evolvesFromSpecies;
  @JsonKey(name: 'flavor_text_entries') List<dynamic> flavorTextEntries;
  @JsonKey(name: 'form_descriptions') List<dynamic> formDescriptions;
  @JsonKey(name: 'forms_switchable') bool formsSwitchable;
  @JsonKey(name: 'gender_rate') int genderRate;
  List<dynamic> genera;
  Generation generation;
  @JsonKey(name: 'growth_rate') GrowthRate growthRate;
  Habitat habitat;
  @JsonKey(name: 'has_gender_differences') bool hasGenderDifferences;
  @JsonKey(name: 'hatch_counter') int hatchCounter;
  int id;
  @JsonKey(name: 'is_baby') bool isBaby;
  @JsonKey(name: 'is_legendary') bool isLegendary;
  @JsonKey(name: 'is_mythical') bool isMythical;
  String name;
  List<dynamic> names;
  int order;
  @JsonKey(name: 'pal_park_encounters') List<dynamic> palParkEncounters;
  @JsonKey(name: 'pokedex_numbers') List<dynamic> pokedexNumbers;
  Shape shape;
  List<dynamic> varieties;

  factory PokemonSpecies.fromJson(Map<String,dynamic> json) => _$PokemonSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonSpeciesToJson(this);
}

@JsonSerializable()
class Color {
      Color();

  String name;
  String url;

  factory Color.fromJson(Map<String,dynamic> json) => _$ColorFromJson(json);
  Map<String, dynamic> toJson() => _$ColorToJson(this);
}

@JsonSerializable()
class EvolutionChain {
      EvolutionChain();

  String url;

  factory EvolutionChain.fromJson(Map<String,dynamic> json) => _$EvolutionChainFromJson(json);
  Map<String, dynamic> toJson() => _$EvolutionChainToJson(this);
}

@JsonSerializable()
class EvolvesFromSpecies {
      EvolvesFromSpecies();

  String name;
  String url;

  factory EvolvesFromSpecies.fromJson(Map<String,dynamic> json) => _$EvolvesFromSpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$EvolvesFromSpeciesToJson(this);
}

@JsonSerializable()
class Generation {
      Generation();

  String name;
  String url;

  factory Generation.fromJson(Map<String,dynamic> json) => _$GenerationFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationToJson(this);
}

@JsonSerializable()
class GrowthRate {
      GrowthRate();

  String name;
  String url;

  factory GrowthRate.fromJson(Map<String,dynamic> json) => _$GrowthRateFromJson(json);
  Map<String, dynamic> toJson() => _$GrowthRateToJson(this);
}

@JsonSerializable()
class Habitat {
      Habitat();

  String name;
  String url;

  factory Habitat.fromJson(Map<String,dynamic> json) => _$HabitatFromJson(json);
  Map<String, dynamic> toJson() => _$HabitatToJson(this);
}

@JsonSerializable()
class Shape {
      Shape();

  String name;
  String url;

  factory Shape.fromJson(Map<String,dynamic> json) => _$ShapeFromJson(json);
  Map<String, dynamic> toJson() => _$ShapeToJson(this);
}

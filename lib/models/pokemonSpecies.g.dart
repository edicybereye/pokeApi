// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemonSpecies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonSpecies _$PokemonSpeciesFromJson(Map<String, dynamic> json) {
  return PokemonSpecies()
    ..baseHappiness = json['base_happiness'] as int
    ..captureRate = json['capture_rate'] as int
    ..color = json['color'] == null
        ? null
        : Color.fromJson(json['color'] as Map<String, dynamic>)
    ..eggGroups = json['egg_groups'] as List
    ..evolutionChain = json['evolution_chain'] == null
        ? null
        : EvolutionChain.fromJson(
            json['evolution_chain'] as Map<String, dynamic>)
    ..evolvesFromSpecies = json['evolves_from_species'] == null
        ? null
        : EvolvesFromSpecies.fromJson(
            json['evolves_from_species'] as Map<String, dynamic>)
    ..flavorTextEntries = json['flavor_text_entries'] as List
    ..formDescriptions = json['form_descriptions'] as List
    ..formsSwitchable = json['forms_switchable'] as bool
    ..genderRate = json['gender_rate'] as int
    ..genera = json['genera'] as List
    ..generation = json['generation'] == null
        ? null
        : Generation.fromJson(json['generation'] as Map<String, dynamic>)
    ..growthRate = json['growth_rate'] == null
        ? null
        : GrowthRate.fromJson(json['growth_rate'] as Map<String, dynamic>)
    ..habitat = json['habitat'] == null
        ? null
        : Habitat.fromJson(json['habitat'] as Map<String, dynamic>)
    ..hasGenderDifferences = json['has_gender_differences'] as bool
    ..hatchCounter = json['hatch_counter'] as int
    ..id = json['id'] as int
    ..isBaby = json['is_baby'] as bool
    ..isLegendary = json['is_legendary'] as bool
    ..isMythical = json['is_mythical'] as bool
    ..name = json['name'] as String
    ..names = json['names'] as List
    ..order = json['order'] as int
    ..palParkEncounters = json['pal_park_encounters'] as List
    ..pokedexNumbers = json['pokedex_numbers'] as List
    ..shape = json['shape'] == null
        ? null
        : Shape.fromJson(json['shape'] as Map<String, dynamic>)
    ..varieties = json['varieties'] as List;
}

Map<String, dynamic> _$PokemonSpeciesToJson(PokemonSpecies instance) =>
    <String, dynamic>{
      'base_happiness': instance.baseHappiness,
      'capture_rate': instance.captureRate,
      'color': instance.color,
      'egg_groups': instance.eggGroups,
      'evolution_chain': instance.evolutionChain,
      'evolves_from_species': instance.evolvesFromSpecies,
      'flavor_text_entries': instance.flavorTextEntries,
      'form_descriptions': instance.formDescriptions,
      'forms_switchable': instance.formsSwitchable,
      'gender_rate': instance.genderRate,
      'genera': instance.genera,
      'generation': instance.generation,
      'growth_rate': instance.growthRate,
      'habitat': instance.habitat,
      'has_gender_differences': instance.hasGenderDifferences,
      'hatch_counter': instance.hatchCounter,
      'id': instance.id,
      'is_baby': instance.isBaby,
      'is_legendary': instance.isLegendary,
      'is_mythical': instance.isMythical,
      'name': instance.name,
      'names': instance.names,
      'order': instance.order,
      'pal_park_encounters': instance.palParkEncounters,
      'pokedex_numbers': instance.pokedexNumbers,
      'shape': instance.shape,
      'varieties': instance.varieties,
    };

Color _$ColorFromJson(Map<String, dynamic> json) {
  return Color()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

EvolutionChain _$EvolutionChainFromJson(Map<String, dynamic> json) {
  return EvolutionChain()..url = json['url'] as String;
}

Map<String, dynamic> _$EvolutionChainToJson(EvolutionChain instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

EvolvesFromSpecies _$EvolvesFromSpeciesFromJson(Map<String, dynamic> json) {
  return EvolvesFromSpecies()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$EvolvesFromSpeciesToJson(EvolvesFromSpecies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Generation _$GenerationFromJson(Map<String, dynamic> json) {
  return Generation()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$GenerationToJson(Generation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GrowthRate _$GrowthRateFromJson(Map<String, dynamic> json) {
  return GrowthRate()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$GrowthRateToJson(GrowthRate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Habitat _$HabitatFromJson(Map<String, dynamic> json) {
  return Habitat()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$HabitatToJson(Habitat instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Shape _$ShapeFromJson(Map<String, dynamic> json) {
  return Shape()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$ShapeToJson(Shape instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

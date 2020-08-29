// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemonEvolutions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonEvolutions _$PokemonEvolutionsFromJson(Map<String, dynamic> json) {
  return PokemonEvolutions()
    ..babyTriggerItem = json['baby_trigger_item']
    ..chain = json['chain'] == null
        ? null
        : Chain.fromJson(json['chain'] as Map<String, dynamic>)
    ..id = json['id'] as int;
}

Map<String, dynamic> _$PokemonEvolutionsToJson(PokemonEvolutions instance) =>
    <String, dynamic>{
      'baby_trigger_item': instance.babyTriggerItem,
      'chain': instance.chain,
      'id': instance.id,
    };

Chain _$ChainFromJson(Map<String, dynamic> json) {
  return Chain()
    ..evolutionDetails = json['evolution_details'] as List
    ..evolvesTo = json['evolves_to'] as List
    ..isBaby = json['is_baby'] as bool
    ..speciesNew = json['species'] == null
        ? null
        : SpeciesNew.fromJson(json['species'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ChainToJson(Chain instance) => <String, dynamic>{
      'evolution_details': instance.evolutionDetails,
      'evolves_to': instance.evolvesTo,
      'is_baby': instance.isBaby,
      'species': instance.speciesNew,
    };

SpeciesNew _$SpeciesNewFromJson(Map<String, dynamic> json) {
  return SpeciesNew()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$SpeciesNewToJson(SpeciesNew instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

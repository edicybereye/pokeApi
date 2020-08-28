// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemonDetail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) {
  return PokemonDetail()
    ..abilities = json['abilities'] as List
    ..baseExperience = json['base_experience'] as int
    ..forms = json['forms'] as List
    ..gameIndices = json['game_indices'] as List
    ..height = json['height'] as int
    ..heldItems = json['held_items'] as List
    ..id = json['id'] as int
    ..isDefault = json['is_default'] as bool
    ..locationAreaEncounters = json['location_area_encounters'] as String
    ..moves = json['moves'] as List
    ..name = json['name'] as String
    ..order = json['order'] as int
    ..species = json['species'] == null
        ? null
        : Species.fromJson(json['species'] as Map<String, dynamic>)
    ..sprites = json['sprites'] == null
        ? null
        : Sprites.fromJson(json['sprites'] as Map<String, dynamic>)
    ..stats = json['stats'] as List
    ..types = json['types'] as List
    ..weight = json['weight'] as int;
}

Map<String, dynamic> _$PokemonDetailToJson(PokemonDetail instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'sprites': instance.sprites,
      'stats': instance.stats,
      'types': instance.types,
      'weight': instance.weight,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return Species()
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) {
  return Sprites()
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female']
    ..other = json['other'] == null
        ? null
        : Other.fromJson(json['other'] as Map<String, dynamic>)
    ..versions = json['versions'] == null
        ? null
        : Versions.fromJson(json['versions'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'other': instance.other,
      'versions': instance.versions,
    };

Other _$OtherFromJson(Map<String, dynamic> json) {
  return Other()
    ..dreamWorld = json['dream_world'] == null
        ? null
        : DreamWorld.fromJson(json['dream_world'] as Map<String, dynamic>)
    ..officialArtwork = json['official-artwork'] == null
        ? null
        : OfficialArtwork.fromJson(
            json['official-artwork'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
      'dream_world': instance.dreamWorld,
      'official-artwork': instance.officialArtwork,
    };

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) {
  return DreamWorld()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female'];
}

Map<String, dynamic> _$DreamWorldToJson(DreamWorld instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) {
  return OfficialArtwork()..frontDefault = json['front_default'] as String;
}

Map<String, dynamic> _$OfficialArtworkToJson(OfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

Versions _$VersionsFromJson(Map<String, dynamic> json) {
  return Versions()
    ..generationI = json['generation-i'] == null
        ? null
        : GenerationI.fromJson(json['generation-i'] as Map<String, dynamic>)
    ..generationIi = json['generation-ii'] == null
        ? null
        : GenerationIi.fromJson(json['generation-ii'] as Map<String, dynamic>)
    ..generationIii = json['generation-iii'] == null
        ? null
        : GenerationIii.fromJson(json['generation-iii'] as Map<String, dynamic>)
    ..generationIv = json['generation-iv'] == null
        ? null
        : GenerationIv.fromJson(json['generation-iv'] as Map<String, dynamic>)
    ..generationV = json['generation-v'] == null
        ? null
        : GenerationV.fromJson(json['generation-v'] as Map<String, dynamic>)
    ..generationVi = json['generation-vi'] == null
        ? null
        : GenerationVi.fromJson(json['generation-vi'] as Map<String, dynamic>)
    ..generationVii = json['generation-vii'] == null
        ? null
        : GenerationVii.fromJson(json['generation-vii'] as Map<String, dynamic>)
    ..generationViii = json['generation-viii'] == null
        ? null
        : GenerationViii.fromJson(
            json['generation-viii'] as Map<String, dynamic>);
}

Map<String, dynamic> _$VersionsToJson(Versions instance) => <String, dynamic>{
      'generation-i': instance.generationI,
      'generation-ii': instance.generationIi,
      'generation-iii': instance.generationIii,
      'generation-iv': instance.generationIv,
      'generation-v': instance.generationV,
      'generation-vi': instance.generationVi,
      'generation-vii': instance.generationVii,
      'generation-viii': instance.generationViii,
    };

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) {
  return GenerationI()
    ..redBlue = json['red-blue'] == null
        ? null
        : RedBlue.fromJson(json['red-blue'] as Map<String, dynamic>)
    ..yellow = json['yellow'] == null
        ? null
        : Yellow.fromJson(json['yellow'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationIToJson(GenerationI instance) =>
    <String, dynamic>{
      'red-blue': instance.redBlue,
      'yellow': instance.yellow,
    };

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) {
  return RedBlue()
    ..backDefault = json['back_default'] as String
    ..backGray = json['back_gray'] as String
    ..frontDefault = json['front_default'] as String
    ..frontGray = json['front_gray'] as String;
}

Map<String, dynamic> _$RedBlueToJson(RedBlue instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_gray': instance.backGray,
      'front_default': instance.frontDefault,
      'front_gray': instance.frontGray,
    };

Yellow _$YellowFromJson(Map<String, dynamic> json) {
  return Yellow()
    ..backDefault = json['back_default'] as String
    ..backGray = json['back_gray'] as String
    ..frontDefault = json['front_default'] as String
    ..frontGray = json['front_gray'] as String;
}

Map<String, dynamic> _$YellowToJson(Yellow instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_gray': instance.backGray,
      'front_default': instance.frontDefault,
      'front_gray': instance.frontGray,
    };

GenerationIi _$GenerationIiFromJson(Map<String, dynamic> json) {
  return GenerationIi()
    ..crystal = json['crystal'] == null
        ? null
        : Crystal.fromJson(json['crystal'] as Map<String, dynamic>)
    ..gold = json['gold'] == null
        ? null
        : Gold.fromJson(json['gold'] as Map<String, dynamic>)
    ..silver = json['silver'] == null
        ? null
        : Silver.fromJson(json['silver'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationIiToJson(GenerationIi instance) =>
    <String, dynamic>{
      'crystal': instance.crystal,
      'gold': instance.gold,
      'silver': instance.silver,
    };

Crystal _$CrystalFromJson(Map<String, dynamic> json) {
  return Crystal()
    ..backDefault = json['back_default'] as String
    ..backShiny = json['back_shiny'] as String
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$CrystalToJson(Crystal instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

Gold _$GoldFromJson(Map<String, dynamic> json) {
  return Gold()
    ..backDefault = json['back_default'] as String
    ..backShiny = json['back_shiny'] as String
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$GoldToJson(Gold instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

Silver _$SilverFromJson(Map<String, dynamic> json) {
  return Silver()
    ..backDefault = json['back_default'] as String
    ..backShiny = json['back_shiny'] as String
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$SilverToJson(Silver instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

GenerationIii _$GenerationIiiFromJson(Map<String, dynamic> json) {
  return GenerationIii()
    ..emerald = json['emerald'] == null
        ? null
        : Emerald.fromJson(json['emerald'] as Map<String, dynamic>)
    ..fireredLeafgreen = json['firered-leafgreen'] == null
        ? null
        : FireredLeafgreen.fromJson(
            json['firered-leafgreen'] as Map<String, dynamic>)
    ..rubySapphire = json['ruby-sapphire'] == null
        ? null
        : RubySapphire.fromJson(json['ruby-sapphire'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationIiiToJson(GenerationIii instance) =>
    <String, dynamic>{
      'emerald': instance.emerald,
      'firered-leafgreen': instance.fireredLeafgreen,
      'ruby-sapphire': instance.rubySapphire,
    };

Emerald _$EmeraldFromJson(Map<String, dynamic> json) {
  return Emerald()
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$EmeraldToJson(Emerald instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

FireredLeafgreen _$FireredLeafgreenFromJson(Map<String, dynamic> json) {
  return FireredLeafgreen()
    ..backDefault = json['back_default'] as String
    ..backShiny = json['back_shiny'] as String
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$FireredLeafgreenToJson(FireredLeafgreen instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

RubySapphire _$RubySapphireFromJson(Map<String, dynamic> json) {
  return RubySapphire()
    ..backDefault = json['back_default'] as String
    ..backShiny = json['back_shiny'] as String
    ..frontDefault = json['front_default'] as String
    ..frontShiny = json['front_shiny'] as String;
}

Map<String, dynamic> _$RubySapphireToJson(RubySapphire instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

GenerationIv _$GenerationIvFromJson(Map<String, dynamic> json) {
  return GenerationIv()
    ..diamondPearl = json['diamond-pearl'] == null
        ? null
        : DiamondPearl.fromJson(json['diamond-pearl'] as Map<String, dynamic>)
    ..heartgoldSoulsilver = json['heartgold-soulsilver'] == null
        ? null
        : HeartgoldSoulsilver.fromJson(
            json['heartgold-soulsilver'] as Map<String, dynamic>)
    ..platinum = json['platinum'] == null
        ? null
        : Platinum.fromJson(json['platinum'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationIvToJson(GenerationIv instance) =>
    <String, dynamic>{
      'diamond-pearl': instance.diamondPearl,
      'heartgold-soulsilver': instance.heartgoldSoulsilver,
      'platinum': instance.platinum,
    };

DiamondPearl _$DiamondPearlFromJson(Map<String, dynamic> json) {
  return DiamondPearl()
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$DiamondPearlToJson(DiamondPearl instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

HeartgoldSoulsilver _$HeartgoldSoulsilverFromJson(Map<String, dynamic> json) {
  return HeartgoldSoulsilver()
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$HeartgoldSoulsilverToJson(
        HeartgoldSoulsilver instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

Platinum _$PlatinumFromJson(Map<String, dynamic> json) {
  return Platinum()
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$PlatinumToJson(Platinum instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) {
  return GenerationV()
    ..blackWhite = json['black-white'] == null
        ? null
        : BlackWhite.fromJson(json['black-white'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationVToJson(GenerationV instance) =>
    <String, dynamic>{
      'black-white': instance.blackWhite,
    };

BlackWhite _$BlackWhiteFromJson(Map<String, dynamic> json) {
  return BlackWhite()
    ..animated = json['animated'] == null
        ? null
        : Animated.fromJson(json['animated'] as Map<String, dynamic>)
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$BlackWhiteToJson(BlackWhite instance) =>
    <String, dynamic>{
      'animated': instance.animated,
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

Animated _$AnimatedFromJson(Map<String, dynamic> json) {
  return Animated()
    ..backDefault = json['back_default'] as String
    ..backFemale = json['back_female']
    ..backShiny = json['back_shiny'] as String
    ..backShinyFemale = json['back_shiny_female']
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$AnimatedToJson(Animated instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationVi _$GenerationViFromJson(Map<String, dynamic> json) {
  return GenerationVi()
    ..omegarubyAlphasapphire = json['omegaruby-alphasapphire'] == null
        ? null
        : OmegarubyAlphasapphire.fromJson(
            json['omegaruby-alphasapphire'] as Map<String, dynamic>)
    ..xY = json['x-y'] == null
        ? null
        : XY.fromJson(json['x-y'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationViToJson(GenerationVi instance) =>
    <String, dynamic>{
      'omegaruby-alphasapphire': instance.omegarubyAlphasapphire,
      'x-y': instance.xY,
    };

OmegarubyAlphasapphire _$OmegarubyAlphasapphireFromJson(
    Map<String, dynamic> json) {
  return OmegarubyAlphasapphire()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$OmegarubyAlphasapphireToJson(
        OmegarubyAlphasapphire instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

XY _$XYFromJson(Map<String, dynamic> json) {
  return XY()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$XYToJson(XY instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationVii _$GenerationViiFromJson(Map<String, dynamic> json) {
  return GenerationVii()
    ..iconsPokemon = json['icons_pokemon'] == null
        ? null
        : IconsPokemon.fromJson(json['icons_pokemon'] as Map<String, dynamic>)
    ..ultraSunUltraMoon = json['ultra-sun-ultra-moon'] == null
        ? null
        : UltraSunUltraMoon.fromJson(
            json['ultra-sun-ultra-moon'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationViiToJson(GenerationVii instance) =>
    <String, dynamic>{
      'icons_pokemon': instance.iconsPokemon,
      'ultra-sun-ultra-moon': instance.ultraSunUltraMoon,
    };

IconsPokemon _$IconsPokemonFromJson(Map<String, dynamic> json) {
  return IconsPokemon()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female'];
}

Map<String, dynamic> _$IconsPokemonToJson(IconsPokemon instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

UltraSunUltraMoon _$UltraSunUltraMoonFromJson(Map<String, dynamic> json) {
  return UltraSunUltraMoon()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female']
    ..frontShiny = json['front_shiny'] as String
    ..frontShinyFemale = json['front_shiny_female'];
}

Map<String, dynamic> _$UltraSunUltraMoonToJson(UltraSunUltraMoon instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationViii _$GenerationViiiFromJson(Map<String, dynamic> json) {
  return GenerationViii()
    ..iconsPokemonNew = json['icons_pokemon_new'] == null
        ? null
        : IconsPokemonNew.fromJson(
            json['icons_pokemon_new'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GenerationViiiToJson(GenerationViii instance) =>
    <String, dynamic>{
      'icons_pokemon_new': instance.iconsPokemonNew,
    };

IconsPokemonNew _$IconsPokemonNewFromJson(Map<String, dynamic> json) {
  return IconsPokemonNew()
    ..frontDefault = json['front_default'] as String
    ..frontFemale = json['front_female'];
}

Map<String, dynamic> _$IconsPokemonNewToJson(IconsPokemonNew instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

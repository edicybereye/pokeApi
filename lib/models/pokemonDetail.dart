import 'package:json_annotation/json_annotation.dart';


part 'pokemonDetail.g.dart';

@JsonSerializable()
class PokemonDetail {
      PokemonDetail();

  List<dynamic> abilities;
  @JsonKey(name: 'base_experience') int baseExperience;
  List<dynamic> forms;
  @JsonKey(name: 'game_indices') List<dynamic> gameIndices;
  int height;
  @JsonKey(name: 'held_items') List<dynamic> heldItems;
  int id;
  @JsonKey(name: 'is_default') bool isDefault;
  @JsonKey(name: 'location_area_encounters') String locationAreaEncounters;
  List<dynamic> moves;
  String name;
  int order;
  Species species;
  Sprites sprites;
  List<dynamic> stats;
  List<dynamic> types;
  int weight;

  factory PokemonDetail.fromJson(Map<String,dynamic> json) => _$PokemonDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonDetailToJson(this);
}

@JsonSerializable()
class Species {
      Species();

  String name;
  String url;

  factory Species.fromJson(Map<String,dynamic> json) => _$SpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}

@JsonSerializable()
class Sprites {
      Sprites();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;
  Other other;
  Versions versions;

  factory Sprites.fromJson(Map<String,dynamic> json) => _$SpritesFromJson(json);
  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable()
class Other {
      Other();

  @JsonKey(name: 'dream_world') DreamWorld dreamWorld;
  @JsonKey(name: 'official-artwork') OfficialArtwork officialArtwork;

  factory Other.fromJson(Map<String,dynamic> json) => _$OtherFromJson(json);
  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable()
class DreamWorld {
      DreamWorld();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;

  factory DreamWorld.fromJson(Map<String,dynamic> json) => _$DreamWorldFromJson(json);
  Map<String, dynamic> toJson() => _$DreamWorldToJson(this);
}

@JsonSerializable()
class OfficialArtwork {
      OfficialArtwork();

  @JsonKey(name: 'front_default') String frontDefault;

  factory OfficialArtwork.fromJson(Map<String,dynamic> json) => _$OfficialArtworkFromJson(json);
  Map<String, dynamic> toJson() => _$OfficialArtworkToJson(this);
}

@JsonSerializable()
class Versions {
      Versions();

  @JsonKey(name: 'generation-i') GenerationI generationI;
  @JsonKey(name: 'generation-ii') GenerationIi generationIi;
  @JsonKey(name: 'generation-iii') GenerationIii generationIii;
  @JsonKey(name: 'generation-iv') GenerationIv generationIv;
  @JsonKey(name: 'generation-v') GenerationV generationV;
  @JsonKey(name: 'generation-vi') GenerationVi generationVi;
  @JsonKey(name: 'generation-vii') GenerationVii generationVii;
  @JsonKey(name: 'generation-viii') GenerationViii generationViii;

  factory Versions.fromJson(Map<String,dynamic> json) => _$VersionsFromJson(json);
  Map<String, dynamic> toJson() => _$VersionsToJson(this);
}

@JsonSerializable()
class GenerationI {
      GenerationI();

  @JsonKey(name: 'red-blue') RedBlue redBlue;
  Yellow yellow;

  factory GenerationI.fromJson(Map<String,dynamic> json) => _$GenerationIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIToJson(this);
}

@JsonSerializable()
class RedBlue {
      RedBlue();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_gray') String backGray;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_gray') String frontGray;

  factory RedBlue.fromJson(Map<String,dynamic> json) => _$RedBlueFromJson(json);
  Map<String, dynamic> toJson() => _$RedBlueToJson(this);
}

@JsonSerializable()
class Yellow {
      Yellow();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_gray') String backGray;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_gray') String frontGray;

  factory Yellow.fromJson(Map<String,dynamic> json) => _$YellowFromJson(json);
  Map<String, dynamic> toJson() => _$YellowToJson(this);
}

@JsonSerializable()
class GenerationIi {
      GenerationIi();

  Crystal crystal;
  Gold gold;
  Silver silver;

  factory GenerationIi.fromJson(Map<String,dynamic> json) => _$GenerationIiFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIiToJson(this);
}

@JsonSerializable()
class Crystal {
      Crystal();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory Crystal.fromJson(Map<String,dynamic> json) => _$CrystalFromJson(json);
  Map<String, dynamic> toJson() => _$CrystalToJson(this);
}

@JsonSerializable()
class Gold {
      Gold();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory Gold.fromJson(Map<String,dynamic> json) => _$GoldFromJson(json);
  Map<String, dynamic> toJson() => _$GoldToJson(this);
}

@JsonSerializable()
class Silver {
      Silver();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory Silver.fromJson(Map<String,dynamic> json) => _$SilverFromJson(json);
  Map<String, dynamic> toJson() => _$SilverToJson(this);
}

@JsonSerializable()
class GenerationIii {
      GenerationIii();

  Emerald emerald;
  @JsonKey(name: 'firered-leafgreen') FireredLeafgreen fireredLeafgreen;
  @JsonKey(name: 'ruby-sapphire') RubySapphire rubySapphire;

  factory GenerationIii.fromJson(Map<String,dynamic> json) => _$GenerationIiiFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIiiToJson(this);
}

@JsonSerializable()
class Emerald {
      Emerald();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory Emerald.fromJson(Map<String,dynamic> json) => _$EmeraldFromJson(json);
  Map<String, dynamic> toJson() => _$EmeraldToJson(this);
}

@JsonSerializable()
class FireredLeafgreen {
      FireredLeafgreen();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory FireredLeafgreen.fromJson(Map<String,dynamic> json) => _$FireredLeafgreenFromJson(json);
  Map<String, dynamic> toJson() => _$FireredLeafgreenToJson(this);
}

@JsonSerializable()
class RubySapphire {
      RubySapphire();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_shiny') String frontShiny;

  factory RubySapphire.fromJson(Map<String,dynamic> json) => _$RubySapphireFromJson(json);
  Map<String, dynamic> toJson() => _$RubySapphireToJson(this);
}

@JsonSerializable()
class GenerationIv {
      GenerationIv();

  @JsonKey(name: 'diamond-pearl') DiamondPearl diamondPearl;
  @JsonKey(name: 'heartgold-soulsilver') HeartgoldSoulsilver heartgoldSoulsilver;
  Platinum platinum;

  factory GenerationIv.fromJson(Map<String,dynamic> json) => _$GenerationIvFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIvToJson(this);
}

@JsonSerializable()
class DiamondPearl {
      DiamondPearl();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory DiamondPearl.fromJson(Map<String,dynamic> json) => _$DiamondPearlFromJson(json);
  Map<String, dynamic> toJson() => _$DiamondPearlToJson(this);
}

@JsonSerializable()
class HeartgoldSoulsilver {
      HeartgoldSoulsilver();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory HeartgoldSoulsilver.fromJson(Map<String,dynamic> json) => _$HeartgoldSoulsilverFromJson(json);
  Map<String, dynamic> toJson() => _$HeartgoldSoulsilverToJson(this);
}

@JsonSerializable()
class Platinum {
      Platinum();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory Platinum.fromJson(Map<String,dynamic> json) => _$PlatinumFromJson(json);
  Map<String, dynamic> toJson() => _$PlatinumToJson(this);
}

@JsonSerializable()
class GenerationV {
      GenerationV();

  @JsonKey(name: 'black-white') BlackWhite blackWhite;

  factory GenerationV.fromJson(Map<String,dynamic> json) => _$GenerationVFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationVToJson(this);
}

@JsonSerializable()
class BlackWhite {
      BlackWhite();

  Animated animated;
  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory BlackWhite.fromJson(Map<String,dynamic> json) => _$BlackWhiteFromJson(json);
  Map<String, dynamic> toJson() => _$BlackWhiteToJson(this);
}

@JsonSerializable()
class Animated {
      Animated();

  @JsonKey(name: 'back_default') String backDefault;
  @JsonKey(name: 'back_female') dynamic backFemale;
  @JsonKey(name: 'back_shiny') String backShiny;
  @JsonKey(name: 'back_shiny_female') dynamic backShinyFemale;
  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory Animated.fromJson(Map<String,dynamic> json) => _$AnimatedFromJson(json);
  Map<String, dynamic> toJson() => _$AnimatedToJson(this);
}

@JsonSerializable()
class GenerationVi {
      GenerationVi();

  @JsonKey(name: 'omegaruby-alphasapphire') OmegarubyAlphasapphire omegarubyAlphasapphire;
  @JsonKey(name: 'x-y') XY xY;

  factory GenerationVi.fromJson(Map<String,dynamic> json) => _$GenerationViFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationViToJson(this);
}

@JsonSerializable()
class OmegarubyAlphasapphire {
      OmegarubyAlphasapphire();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory OmegarubyAlphasapphire.fromJson(Map<String,dynamic> json) => _$OmegarubyAlphasapphireFromJson(json);
  Map<String, dynamic> toJson() => _$OmegarubyAlphasapphireToJson(this);
}

@JsonSerializable()
class XY {
      XY();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory XY.fromJson(Map<String,dynamic> json) => _$XYFromJson(json);
  Map<String, dynamic> toJson() => _$XYToJson(this);
}

@JsonSerializable()
class GenerationVii {
      GenerationVii();

  @JsonKey(name: 'icons_pokemon') IconsPokemon iconsPokemon;
  @JsonKey(name: 'ultra-sun-ultra-moon') UltraSunUltraMoon ultraSunUltraMoon;

  factory GenerationVii.fromJson(Map<String,dynamic> json) => _$GenerationViiFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationViiToJson(this);
}

@JsonSerializable()
class IconsPokemon {
      IconsPokemon();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;

  factory IconsPokemon.fromJson(Map<String,dynamic> json) => _$IconsPokemonFromJson(json);
  Map<String, dynamic> toJson() => _$IconsPokemonToJson(this);
}

@JsonSerializable()
class UltraSunUltraMoon {
      UltraSunUltraMoon();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;
  @JsonKey(name: 'front_shiny') String frontShiny;
  @JsonKey(name: 'front_shiny_female') dynamic frontShinyFemale;

  factory UltraSunUltraMoon.fromJson(Map<String,dynamic> json) => _$UltraSunUltraMoonFromJson(json);
  Map<String, dynamic> toJson() => _$UltraSunUltraMoonToJson(this);
}

@JsonSerializable()
class GenerationViii {
      GenerationViii();

  @JsonKey(name: 'icons_pokemon_new') IconsPokemonNew iconsPokemonNew;

  factory GenerationViii.fromJson(Map<String,dynamic> json) => _$GenerationViiiFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationViiiToJson(this);
}

@JsonSerializable()
class IconsPokemonNew {
      IconsPokemonNew();

  @JsonKey(name: 'front_default') String frontDefault;
  @JsonKey(name: 'front_female') dynamic frontFemale;

  factory IconsPokemonNew.fromJson(Map<String,dynamic> json) => _$IconsPokemonNewFromJson(json);
  Map<String, dynamic> toJson() => _$IconsPokemonNewToJson(this);
}

import 'package:dio/dio.dart';
import 'package:pokemon/models/index.dart';

import '../endpoint.dart';

class ServicesPokemon {
  static Future<Result> getPokemon(int offset, int limit) async {
    Dio dio = Dio();
    try {
      final response = await dio.get(EndpointURL.server(offset, limit));
      print("POKEMON ENDPOINT ${response.statusCode}");
      if (200 == response.statusCode) {
        print("POKEMON RESULT ${response.data}");
        Result categories = Result.fromJson(response.data);
        return categories;
      } else {
        Result categories = new Result();
        categories.results = [];
        return categories;
      }
    } catch (e) {
      Result categories = new Result();
      categories.results = [];
      return categories;
    }
  }

  static Future<PokemonDetail> getPokemonDetail(String url) async {
    Dio dio = Dio();
    try {
      final response = await dio.get("$url");
      print("POKEMON DETAIL ENDPOINT ${response.statusCode}");
      if (200 == response.statusCode) {
        print("POKEMON DETAIL RESULT ${response.data}");
        PokemonDetail categories = PokemonDetail.fromJson(response.data);
        return categories;
      } else {
        PokemonDetail categories = new PokemonDetail();
        return categories;
      }
    } catch (e) {
      PokemonDetail categories = new PokemonDetail();
      return categories;
    }
  }

  static Future<PokemonSpecies> getPokemonSpeciesDetail(String url) async {
    Dio dio = Dio();
    try {
      final response = await dio.get("$url");
      print("POKEMON DETAIL ENDPOINT ${response.statusCode}");
      if (200 == response.statusCode) {
        print("POKEMON DETAIL RESULT ${response.data}");
        PokemonSpecies categories = PokemonSpecies.fromJson(response.data);
        return categories;
      } else {
        PokemonSpecies categories = new PokemonSpecies();
        return categories;
      }
    } catch (e) {
      PokemonSpecies categories = new PokemonSpecies();
      return categories;
    }
  }

  static Future<PokemonEvolutions> getPokemonEvolus(String url) async {
    Dio dio = Dio();
    try {
      final response = await dio.get("$url");
      print("POKEMON EVO ENDPOINT ${response.statusCode}");
      if (200 == response.statusCode) {
        print("POKEMON EVO RESULT ${response.data}");
        PokemonEvolutions categories =
            PokemonEvolutions.fromJson(response.data);
        return categories;
      } else {
        PokemonEvolutions categories = new PokemonEvolutions();
        return categories;
      }
    } catch (e) {
      PokemonEvolutions categories = new PokemonEvolutions();
      return categories;
    }
  }
}

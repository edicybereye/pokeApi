import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/models/index.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/models/pokemonDetail.dart';

import 'customShimmer.dart';
import 'customShimmerCircle.dart';

class PokemonItemDetail extends StatelessWidget {
  final Pokemon a;
  final PokemonDetail pokemonDetail;
  final PokemonSpecies pokemonSpecies;
  final bool loading;
  final int selectPokeBall;
  final Function selectPokeRed;
  final Function selectPokeBlue;

  const PokemonItemDetail({
    Key key,
    this.a,
    this.pokemonDetail,
    this.pokemonSpecies,
    this.selectPokeBall = 0,
    this.loading = true,
    this.selectPokeRed,
    this.selectPokeBlue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var startIndex = "https://pokeapi.co/api/v2/pokemon/";
    var pokemonID = a.url.substring(startIndex.length).replaceAll("/", "");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              child: Hero(
                tag: "${a.name}",
                child: CachedNetworkImage(
                  placeholder: (context, url) => PokemonShimmer(),
                  imageUrl:
                      "https://pokeres.bastionbot.org/images/pokemon/$pokemonID.png",
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            loading
                ? Expanded(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      PokemonShimmer(
                        height: 16,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      PokemonShimmer(
                        height: 16,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      PokemonShimmer(
                        height: 16,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      PokemonShimmer(
                        height: 16,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      PokemonShimmer(
                        height: 16,
                      ),
                    ],
                  ))
                : Expanded(
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Height : ".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "${(pokemonDetail.height / 3.93701).toStringAsFixed(2)} Inch"
                                .toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Weight : ".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "${(pokemonDetail.weight / 0.220462).toStringAsFixed(2)} LBS"
                                .toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Type : ".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: pokemonDetail.types
                                .map((e) => Text(
                                      "${e['type']['name'].toString().toUpperCase()}",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Base Experience : ".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Text(
                            "${pokemonDetail.baseExperience}".toUpperCase(),
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Abilities : ".toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: pokemonDetail.abilities
                                .map((e) => Text(
                                      "${e['ability']['name'].toString().toUpperCase()}",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                      ),
                    ],
                  ))
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40,
          child: loading
              ? Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: PokemonCircleShimmer(
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(shape: BoxShape.circle),
                      child: PokemonCircleShimmer(
                        height: 40,
                        width: 40,
                      ),
                    )
                  ],
                )
              : Row(
                  children: [
                    InkWell(
                      onTap: selectPokeRed,
                      child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: selectPokeBall == 0 ? 2 : 0,
                                  color: selectPokeBall == 0
                                      ? Colors.red
                                      : Colors.transparent)),
                          child: Image.asset("./assets/img/red.png")),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: selectPokeBlue,
                      child: Container(
                          height: 40,
                          width: 40,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: selectPokeBall == 1 ? 2 : 0,
                                  color: selectPokeBall == 1
                                      ? Colors.blue[900]
                                      : Colors.transparent)),
                          child: Image.asset("./assets/img/blue.png")),
                    ),
                  ],
                ),
        ),
        SizedBox(
          height: 4,
        ),
        loading
            ? Container(
                child: PokemonShimmer(
                  height: 14,
                ),
              )
            : Container(
                child: Text(selectPokeBall == 0
                    ? "${pokemonSpecies.flavorTextEntries[4]['flavor_text'].toString().replaceAll("\n", " ")}"
                    : "${pokemonSpecies.flavorTextEntries[5]['flavor_text'].toString().replaceAll("\n", " ")}")),
        SizedBox(
          height: 20,
        ),
        Text("Status".toUpperCase()),
        loading
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 16,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  PokemonShimmer(
                    height: 4,
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: pokemonDetail.stats
                    .map((e) => Column(
                          children: [
                            Text("${e['stat']['name'].toString().toUpperCase()} (${e['base_stat'].toString()})"),
                            LinearProgressIndicator(
                              backgroundColor: Colors.lightBlue[100],
                              semanticsValue: e['base_stat'].toString(),
                              semanticsLabel: e['base_stat'].toString(),
                              value: (double.parse(e['base_stat'].toString()) /
                                  200),
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        ))
                    .toList(),
              )
      ],
    );
  }
}

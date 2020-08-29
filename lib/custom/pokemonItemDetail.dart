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
  final PokemonEvolutions pokemonEvolutions;
  final bool loading;
  final int selectPokeBall;
  final Function selectPokeRed;
  final Function selectPokeBlue;

  const PokemonItemDetail(
      {Key key,
      this.a,
      this.pokemonDetail,
      this.pokemonSpecies,
      this.pokemonEvolutions,
      this.loading,
      this.selectPokeBall,
      this.selectPokeRed,
      this.selectPokeBlue})
      : super(key: key);

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
            Expanded(
              child: Container(
                height: 180,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: loading
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          PokemonShimmer(
                            height: 16,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          PokemonShimmer(
                            height: 16,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          PokemonShimmer(
                            height: 16,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          PokemonShimmer(
                            height: 16,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          PokemonShimmer(
                            height: 16,
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Height : ".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Text(
                                "${(pokemonDetail.height / 3.93701).toStringAsFixed(2)} Inch"
                                    .toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
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
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Text(
                                "${(pokemonDetail.weight / 0.220462).toStringAsFixed(2)} LBS"
                                    .toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
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
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: pokemonDetail.types
                                    .map((e) => Text(
                                          "${e['type']['name'].toString().toUpperCase()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
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
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Text(
                                "${pokemonDetail.baseExperience}".toUpperCase(),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
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
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: pokemonDetail.abilities
                                    .map((e) => Text(
                                          "${e['ability']['name'].toString().toUpperCase()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                        ],
                      ),
              ),
            )
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
                          child: Image.asset(
                            "./assets/img/red.png",
                            height: 40,
                            width: 40,
                          )),
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
                          child: Image.asset(
                            "./assets/img/blue.png",
                            height: 40,
                            width: 40,
                          )),
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
        Text(
          "Status".toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
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
                            Text(
                                "${e['stat']['name'].toString().toUpperCase()} (${e['base_stat'].toString()})"),
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
              ),
        SizedBox(
          height: 16,
        ),
        loading
            ? Container(
                height: 100,
                child: PokemonShimmer(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                ),
              )
            : Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.grey, Colors.black87, Colors.black],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Evolutions".toUpperCase(),
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                child: CachedNetworkImage(
                                  placeholder: (context, url) =>
                                      PokemonShimmer(),
                                  imageUrl:
                                      "https://pokeres.bastionbot.org/images/pokemon/${pokemonEvolutions.chain.speciesNew.url.toString().substring(42).replaceAll('/', '')}.png",
                                  errorWidget: (context, url, error) =>
                                      new Icon(Icons.error),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "${pokemonEvolutions.chain.speciesNew.name}"
                                    .toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        pokemonEvolutions.chain.evolvesTo.length == 0
                            ? SizedBox()
                            : Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            PokemonShimmer(),
                                        imageUrl:
                                            "https://pokeres.bastionbot.org/images/pokemon/${pokemonEvolutions.chain.evolvesTo[0]['species']['url'].toString().substring(42).replaceAll('/', '')}.png",
                                        errorWidget: (context, url, error) =>
                                            new Icon(Icons.error),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "${pokemonEvolutions.chain.evolvesTo[0]['species']['name']}"
                                          .toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                        pokemonEvolutions
                                    .chain.evolvesTo[0]['evolves_to'].length ==
                                0
                            ? SizedBox()
                            : Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      child: CachedNetworkImage(
                                        placeholder: (context, url) =>
                                            PokemonShimmer(),
                                        imageUrl:
                                            "https://pokeres.bastionbot.org/images/pokemon/${pokemonEvolutions.chain.evolvesTo[0]['evolves_to'][0]['species']['url'].toString().substring(42).replaceAll('/', '')}.png",
                                        errorWidget: (context, url, error) =>
                                            new Icon(Icons.error),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "${pokemonEvolutions.chain.evolvesTo[0]['evolves_to'][0]['species']['name']}"
                                          .toUpperCase(),
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              )
      ],
    );
  }
}

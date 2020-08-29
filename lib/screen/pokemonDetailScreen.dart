import 'package:flutter/material.dart';
import 'package:pokemon/custom/pokemonItemDetail.dart';
import 'package:pokemon/models/index.dart';
import 'package:pokemon/models/pokemon.dart';
import 'package:pokemon/models/pokemonDetail.dart';
import 'package:pokemon/utils/services/servicesPokemon.dart';

class PokemonDetailScreen extends StatefulWidget {
  final Pokemon model;

  const PokemonDetailScreen({Key key, this.model}) : super(key: key);
  @override
  _PokemonDetailScreenState createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen> {
  var pokemonID;
  int _selectPokeBall = 0;
  PokemonDetail pokemonDetail;
  PokemonSpecies pokemonSpecies;
  PokemonEvolutions pokemonEvolutions;
  var pokemonIDEvo;
  var indexEvo;
  var loading = false;
  getPokemonDetail() {
    setState(() {
      loading = true;
    });
    ServicesPokemon.getPokemonDetail("${widget.model.url}").then((value) {
      if (value == null) {
        setState(() {
          loading = false;
        });
      } else {
        setState(() {
          pokemonDetail = value;
          ServicesPokemon.getPokemonSpeciesDetail(pokemonDetail.species.url)
              .then((val) {
            if (val == null) {
            } else {
              setState(() {
                pokemonSpecies = val;
              });
              ServicesPokemon.getPokemonEvolus(
                      pokemonSpecies.evolutionChain.url)
                  .then((e) {
                if (e == null) {
                } else {
                  setState(() {
                    pokemonEvolutions = e;
                    loading = false;
                    indexEvo = "https://pokeapi.co/api/v2/pokemon-species/";
                    pokemonIDEvo = pokemonEvolutions.chain.speciesNew.url
                        .substring(indexEvo.length)
                        .replaceAll("/", "");
                    print("NEW ID $pokemonIDEvo");
                  });
                }
              });
            }
          });
        });
      }
    });
  }

  @override
  void initState() {
    getPokemonDetail();

    var startIndex = "https://pokeapi.co/api/v2/pokemon/";
    pokemonID =
        widget.model.url.substring(startIndex.length).replaceAll("/", "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("${widget.model.name}".toUpperCase()),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          PokemonItemDetail(
            selectPokeBall: _selectPokeBall,
            a: widget.model,
            loading: loading,
            pokemonDetail: pokemonDetail,
            pokemonSpecies: pokemonSpecies,
            pokemonEvolutions: pokemonEvolutions,
            selectPokeBlue: () {
              setState(() {
                _selectPokeBall = 1;
              });
            },
            selectPokeRed: () {
              setState(() {
                _selectPokeBall = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

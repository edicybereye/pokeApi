import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/models/index.dart';

import 'customShimmer.dart';

class PokemonItemGrid extends StatelessWidget {
  final Pokemon a;

  const PokemonItemGrid({Key key, this.a}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var startIndex = "https://pokeapi.co/api/v2/pokemon/";
    var pokemonID = a.url.substring(startIndex.length).replaceAll("/", "");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey[300]),
          child: Container(
            child: Hero(
              tag: "${a.name}",
              child: CachedNetworkImage(
                placeholder: (context, url) => PokemonShimmer(
                  height: 100,
                ),
                fit: BoxFit.cover,
                imageUrl:
                    "https://pokeres.bastionbot.org/images/pokemon/$pokemonID.png",
                errorWidget: (context, url, error) => new Icon(Icons.error),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          "${a.name}".toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}

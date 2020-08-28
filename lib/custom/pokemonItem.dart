import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokemon/models/pokemon.dart';

import 'customShimmer.dart';

class PokemonItem extends StatelessWidget {
  final Pokemon a;

  const PokemonItem({Key key, this.a}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var startIndex = "https://pokeapi.co/api/v2/pokemon/";
    var pokemonID = a.url.substring(startIndex.length).replaceAll("/", "");
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: Hero(
                tag: "${a.name}",
                child: CachedNetworkImage(
                  placeholder: (context, url) => PokemonShimmer(
                    height: 60,
                    width: 60,
                  ),
                  fit: BoxFit.cover,
                  imageUrl:
                      "https://pokeres.bastionbot.org/images/pokemon/$pokemonID.png",
                  errorWidget: (context, url, error) => new Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text("${a.name}".toUpperCase()),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Divider(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

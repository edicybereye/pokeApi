import 'package:flutter/material.dart';
import 'package:pokemon/custom/customShimmer.dart';

class LoadingItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              PokemonShimmer(
                width: 60,
                height: 60,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: PokemonShimmer(
                  height: 20,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

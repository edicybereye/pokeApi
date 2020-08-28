import 'package:flutter/material.dart';
import 'package:pokemon/custom/shimmer.dart';

class PokemonShimmer extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  PokemonShimmer({Key key, this.height, this.width, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomShimmer.fromColors(
      highlightColor: Colors.white,
      baseColor: Colors.grey[300],
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: Colors.grey),
      ),
    );
  }
}

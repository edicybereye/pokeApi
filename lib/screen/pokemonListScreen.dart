import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pokemon/custom/loadingItemList.dart';
import 'package:pokemon/custom/pokemonItem.dart';
import 'package:pokemon/custom/pokemonItemGrid.dart';
import 'package:pokemon/models/index.dart';
import 'package:pokemon/models/result.dart';
import 'package:pokemon/screen/pokemonDetailScreen.dart';
import 'package:pokemon/utils/services/servicesPokemon.dart';

class PokemonListScreen extends StatefulWidget {
  @override
  _PokemonListScreenState createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  ScrollController _scrollController = ScrollController();
  var loading = false;
  var cekData = false;
  int offset = 0, limit = 10;
  Result result;
  List<Pokemon> list = [];
  getPokemon() {
    setState(() {
      loading = true;
    });
    ServicesPokemon.getPokemon(offset, limit).then((value) {
      if (value.results.length > 0) {
        setState(() {
          result = value;
          list = value.results;
          print("Total List ${list.length}");
          loading = false;
          cekData = true;
        });
      } else {
        setState(() {
          loading = false;
          cekData = false;
        });
      }
    });
  }

  var loadMore = false;
  _loadMore() {
    ServicesPokemon.getPokemon(list.length, limit).then((value) {
      if (result.count > list.length) {
        setState(() {
          loadMore = true;
        });
        setState(() {
          result = value;
          list.addAll(value.results);
          print("Total List ${list.length}");
          loadMore = false;
        });
      } else {
        print("Load More Selesai");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getPokemon();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  var layoutGrid = false;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Pokemon List Screen"),
        actions: [
          IconButton(
              icon: Icon(layoutGrid ? Icons.apps : Icons.list),
              onPressed: () {
                setState(() {
                  layoutGrid = !layoutGrid;
                });
              })
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: cekData
              ? layoutGrid
                  ? StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      mainAxisSpacing: 16,
                      controller: _scrollController,
                      padding: EdgeInsets.all(16),
                      crossAxisSpacing: 16,
                      physics: ClampingScrollPhysics(),
                      itemCount: list.length == list.length
                          ? list.length
                          : list.length + 1,
                      staggeredTileBuilder: (int index) =>
                          new StaggeredTile.fit(1),
                      itemBuilder: (context, i) {
                        final a = list[i];
                        var no = i + 1;
                        return (no == list.length)
                            ? Container(
                                color: Colors.white,
                                height: 50,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ))
                            : InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PokemonDetailScreen(
                                                model: a,
                                              )));
                                },
                                child: PokemonItemGrid(
                                  a: a,
                                ),
                              );
                      },
                    )
                  : ListView.builder(
                      itemCount: list.length == list.length
                          ? list.length
                          : list.length + 1,
                      shrinkWrap: true,
                      controller: _scrollController,
                      physics: ClampingScrollPhysics(),
                      itemBuilder: (context, i) {
                        final a = list[i];
                        var no = i + 1;
                        return (no == list.length)
                            ? Container(
                                color: Colors.white,
                                height: 50,
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ))
                            : InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PokemonDetailScreen(
                                                model: a,
                                              )));
                                },
                                child: PokemonItem(a: a));
                      },
                    )
              : LoadingItemList()),
    );
  }
}

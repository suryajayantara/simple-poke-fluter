import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapp/controllers/PokemonController.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Myapp({Key? key}) : super(key: key);
  PokemonController pokemonController = Get.put(PokemonController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pokeapp"),
        ),
        body: Obx((){
          return ListView.builder(
            itemCount: pokemonController.listData.length,
            itemBuilder: ((context, index) {
              return Text(pokemonController.listData[index].name.toString());
            }));
        }),
      ),
    );
  }
}

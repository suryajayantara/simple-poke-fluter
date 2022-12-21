import 'dart:developer';

import 'package:get/get.dart';
import 'package:pokeapp/models/Pokemon.dart';
import 'package:pokeapp/services/PokemonService.dart';

class PokemonController extends GetxController {
  // Variable yang tugasnya menyimpan data
  final listData = <Pokemon>[].obs;
  final pokemonSevice = new PokemonService();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPokemon();
  }

  void getPokemon() async {
    await pokemonSevice.getPokemon().then((value){
      listData.assignAll(value);
    });
  }
}

import 'package:get/get.dart';
import 'package:pokeapp/models/Pokemon.dart';

class PokemonService extends GetConnect {
  
  Future<List<Pokemon>> getPokemon() async {

    return await get(Uri.parse("https://pokeapi.co/api/v2/pokemon").toString())
        .then((value) {
      if (value.isOk && value.body != null) {
        return List<Pokemon>.from(
            value.body['results'].map((e) => Pokemon.fromJson(e)));
      } else {
        throw "Value Null !";
      }
    });
  }
}

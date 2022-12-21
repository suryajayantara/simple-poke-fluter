import 'package:json_annotation/json_annotation.dart';

part 'Pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  String? name;
  String? url;
  Pokemon({
    this.name,
    this.url,
  });

  Pokemon copyWith({
    String? name,
    String? url,
  }) {
    return Pokemon(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  factory Pokemon.fromJson(Map<String, dynamic> map) => _$PokemonFromJson(map);

  @override
  String toString() => 'Pokemon(name: $name, url: $url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pokemon && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;
}

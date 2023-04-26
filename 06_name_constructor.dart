void main(List<String> args) {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // final ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);

  final ironman = Hero.fromJson(rawJson);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });
// * Constructor con nombre, es un constructor con metodo en esta caso tiene validaciones
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';
  @override
  String toString() {
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'NO'}';
  }
}

void main(List<String> args) {
  final wolverine = new Hero(name: 'Logan', power: 'Regeneracion');
  print(wolverine);
}

class Hero {
  String name;
  String power;
  // inicializar constructor
  Hero({required this.name, this.power = 'Sin poder'});

  //inicializando constructor de forma manual
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override // sobreescribiendo el comportamiento nativo
  String toString() {
    return '$name - $power';
  }
}

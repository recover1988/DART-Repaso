void main(List<String> args) {
  // tipo Map es un objeto con valores claves-valor
  // el tipo object es cualquier tipo
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };
  // final Map<num, String> pokemons = {1: 'Charmander', 2: 'Bulbasaur'};

  print(pokemon);
  print('Name ${pokemon['name']}');
  print('Back ${pokemon['sprites']![2]}');
  print('Fron ${pokemon['sprites']![1]}');
}

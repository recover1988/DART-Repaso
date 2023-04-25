void main(List<String> args) {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('List original: $numbers');
  print('Length: ${numbers.length}'); // metodos
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse: ${numbers.reversed}'); // ordenaod inverso

  final reversedNumbers =
      numbers.reversed; // lo transforma en iterable con parentesis
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}'); // transformar a lista
  print(
      'Set: ${reversedNumbers.toSet()}'); // los set llevan llaves pero no tienen valores duplicados

  final numbersGreaterThanFive = numbers.where((element) => element > 5);
  print('>5 iterable: $numbersGreaterThanFive');
  print('>5 set: ${numbersGreaterThanFive.toSet()}');
}

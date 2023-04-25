void main(List<String> args) {
  print(greetEveryone());
  print('Suma: ${addTwoNumber(10, 20)}');
  print(greetPerson(name: 'Eric'));
}

String greetEveryone() =>
    'Hello everyone'; // Las funciones flechas no pueden elaborar un cuerpo
// * Con [] Parametros opcionales posicionales
int addTwoNumber(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??= 0;
  return a + b;
}
// int addTwoNumber(int a, [int? b ]) => a + b;

// forma especial de nombrar parametros

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message $name';
}

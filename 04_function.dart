void main(List<String> args) {
  print(greetEveryone());
  print('Suma: ${addTwoNumber(10, 20)}');
}

String greetEveryone() =>
    'Hello everyone'; // Las funciones flechas no pueden elaborar un cuerpo

int addTwoNumber(int a, [int b = 0]) {
  // b = b ?? 0;
  // b ??= 0;
  return a + b;
}
// int addTwoNumber(int a, [int? b ]) => a + b;

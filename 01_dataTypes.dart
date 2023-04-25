void main() {
  final String pokemon = 'Ditto'; // * tipo string
  final int hp = 100; // * tipo entero
  final bool isAlive = true; // * tipo booleano
  // ! final abilities= <String>['impostor'];
  final List<String> abilities = [
    'impostor'
  ]; // * Lista de strings vendria a ser un array
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  // dynamic == null , acepta nulos y puede ser cualquier tipo de dato
  dynamic errorMessage = 'Hola'; // siempre va a ser dynamic
  // * los tipo daynamic puede aceptar cualquier tipo de dato como:
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => null;
  errorMessage = null;

  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
}

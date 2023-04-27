void main(List<String> args) {
  print('inicio del programa');
  httpGet('http://example.com').then(
    (value) {
      print(value);
    },
  ).catchError((err) {
    print('Error: $err');
  });
  print('final del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';
    // return 'respuesta de la peticion http';
  });
}

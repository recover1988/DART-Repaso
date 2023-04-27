void main(List<String> args) async {
  //es un Future<void>
  print('inicio del programa');
  try {
    final value = await httpGet('http://example.com');
    print(value);
  } catch (e) {
    print('Tenemos un error: $e');
  }
  print('final del programa');
}

// * El await transforma los futures como si fueran codigo sincrono y secuencial
Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Tenemos un valor de la peticion';
}

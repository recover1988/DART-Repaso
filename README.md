# DART-Repaso

## Sobre Dart

Lenguaje de programación dado a conocer en octubre de 2011 durante la conferencia goto de Google. ¿Con qué fin? Busca ser una alternativa moderna a JavaScript para programación web (y ahora para muchas otras cosas más) y algunas de sus principales características son:

- Utiliza una máquina virtual llamada Dart VM (😉️ guiño a Java).
- Es multiplataforma, tanto para dispositivos móviles, web, escritorio y dispositivos embebidos.
- Utiliza un compilador AOT (Ahead-of-Time), característica que consiste en compilar todo el código antes de la ejecución.
- Cuenta con hot reload que permite ver los cambios de tu aplicación al instante.
- Durante la Google IO 2019 que se celebró el mes de mayo, se hicieron algunos anuncios importantes sobre el framework Flutter, (utiliza Dart como lenguaje de desarrollo). De entrada se mostró la nueva versión 1.5, se confirmó la compatibilidad con desarrollo web, escritorio y dispositivos embebidos, uso de ML, etc.

## Tipos de Datos

En Dart existen los siguientes tipos de datos:

- Enteros: int
- De punto punto flotante: double
- Cadenas de texto: String
- Booleanos: bool
- Tipos dinámicos: dynamic

## Colecciones

- Listas
  Las variables de tipo lista deben indicar el tipo de elementos que contendrá, se indica el tipo dentro de los símbolos <> como se ve en ejemplo de abajo, además, para asignar elementos podemos usar corchetes [] y dentro los elementos a agregar separados por una coma.

```
List<String> list; // Output: null
list = ['Juan', 'Ana']; // Output: [Juan, Ana]
```

### Agregar

```
list.add('Pepe'); // Output: [Juan, Ana, Pepe]
```

### Remover

```
list.removeAt(2); // Output: [Juan, Ana]
list.removeLast(); // Output: [Juan]
```

### Concatenar

```
List<String> list2 = ['Maria', 'Jose']; // Output: [Maria, Jose]
list.addAll(list2); // Output: [Juan, Ana, Maria, Jose]
```

### Dynamic

```
List<dynamic> listaDinamica = [1,2,3,4, 'Hola', 3.4, true];
```

## Sets

Muy similar a una lista, pueden contener una colección de objetos, se diferencian porque los elementos que contiene `nunca se repiten`. En el ejemplo de abajo al momento de inicializar el Set con el método from(), se pasa una lista con el elemento ‘Blanco’ repetido, sin embargo, si imprimimos o accedemos al Set notaremos que solo se encuentra una sola vez.

```
Set colores = Set.from(['Amarillo', 'Blanco', 'Blanco']);
// Output: {Amarillo, Blanco}
```

### Agregar

```
colores.add('Negro'); // Output: {Amarillo, Blanco, Negro}
```

### Concatenar

```
Set colores2 = Set.from(['Rojo', 'Azul']);
colores.addAll(colores2);
// Output: {Amarillo, Blanco, Azul, Rojo}
```

### Eliminar

```
colores.remove('Blanco'); // Output: {Amarillo, Azul, Rojo}
colores.clear(); // Output: {}
```

## Maps

Los mapas son colecciones que se caracterizan por estar compuestas de elementos Clave:Valor. Para inicializar una variable de tipo Map basta con asignar entre llaves {} los válores Clave:Valor separados por una coma.

```
var ciudades = {
  'Mexico': 'CDMX',
  'Argentina': 'Buenos Aires',
  'España': 'Madrid',
  'Colombia':  'Bogota'
};
```

### Agregar

```
ciudades['Chile'] =  'Santiago de Chile';
ciudades2 = {'Uruguay':'Montevideo'};
ciudades.addAll(ciudades2);
```

### Remover

```
ciudades.remove('España');
ciudades.clear();
```

## Declaración de Constantes

Existen dos formas de crear constantes, la primera es con la palabra reservada `const` que implica que aloja el valor en tiempo de compilación, en contraste con la palabra reservada `final`, que aloja el valor en la memoria en tiempo de ejecución.

```
const NOMBRE = "Pepe";
final EDAD = 24;
```

También puedes crear constantes estáticas de clase usando la palabra static antes de const o final.

```
static const NOMBRE = "Pepe";
static final EDAD = 24;
```

## Declaracion de funciones

En Dart las funciones también son objetos, lo que significa que incluso podemos pasarlas como parámetros de otras funciones como un objeto de tipo Function.

```
main(List<String> arguments) {
  var operacion1 = operacion(5, 3, suma);
  var operacion2 = operacion(5, 3, resta);
  print(operacion1);
  print(operacion2);
}

int operacion(int a, int b, Function func) {
  return func(a, b);
}

int suma(int a, int b) {
  return a + b;
}

int resta(int a, int b) {
  return a - b;
}
```

También podemos escribir las funciones de una forma más abreviada, siempre y cuando sea una sola sentencia a ejecutar, por lo que el ejemplo anterior puede escribirse de la siguiente manera:

```
main(List<String> arguments) {
  var operacion1 = operacion(5, 3, suma);
  var operacion2 = operacion(5, 3, resta);
  print(operacion1);
  print(operacion2);
}

int operacion(int a, int b, Function func) => func(a, b);
int suma(int a, int b) => a + b;
int resta(int a, int b) => a - b;
```

En Dart podemos utilizar funciones anónimas con la notación de flecha:

```
main(List<String> arguments) {
  var operacion = operacion(5, 3, (a, b) => a * b);
  print(operacion);
}

int operacion(int a, int b, Function func) => func(a, b);
```

## Parámetros opcionales posicionados

Permite que uno o varios parámetros de una función sean opcionales al momento de ser llamada dicha función. Para indicar los parámetros opcionales posicionados basta con encerrarlos entre corchetes []. Importante considerar que únicamente puedes usar esta notación con el o los últimos parámetros dentro de la definición de parámetros.

```
main(List<String> arguments) {
  infoPersona("Carlos", 24);
}
// Ejemplo correcto
void infoPersona(String nombre, int edad, [String ciudad]) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
// Ejemplo correcto
void infoPersona([String nombre, int edad, String ciudad]) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
```

Los siguientes ejemplos no son válidos, debido a que los corchetes [] encierran parámetros al principio o en medio de la definición de parámetros:

```
// Ejemplo incorrecto
void infoPersona(String nombre, [int edad], String ciudad) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}

// Ejemplo incorrecto
void infoPersona([String nombre, int edad], String ciudad) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
```

## Parámetros opcionales nombrados

Permite utilizar una etiqueta en la llamada de las funciones. Para indicar los parámetros opcionales nombrados basta con encerrarlos entre llaves {}. Al igual que los parámetros opcionales posicionados, solo los últimos parámetros pueden utilizar esta característica. Se puede aplicar el `required` para indicar que es un parametro obligatorio.

```
main(List<String> arguments) {
  infoPersona("Carlos", 24, ciudad: "CDMX");
}

// Ejemplo correcto
void infoPersona(String nombre, int edad, {String ciudad}) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
// Ejemplo correcto
void infoPersona({require String nombre, int edad, String ciudad}) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
```

Los siguientes ejemplos no son válidos, debido a que las llaves {} encierran parámetros al principio o en medio de la definición de parámetros:

```
// Ejemplo incorrecto
void infoPersona(String nombre, {int edad}, String ciudad) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}

// Ejemplo incorrecto
void infoPersona({String nombre, int edad}, String ciudad) {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
```

## Parámetros con valores por defecto

Al igual que los Parámetros opcionales nombrados utilizan un par de llaves {} para encerrar los parámetros con valores por defecto y únicamente los posicionados al final de la definición de parámetros pueden ser definidos de esta manera. Para usarlos, después del nombre de la variable se usa el signo = seguido del valor inicial deseado.

```
main(List<String> arguments) {
  infoPersona("Carlos", 24);
}

void infoPersona(String nombre, int edad, {String ciudad = "CDMX"})  {
    print("Descripcion: $nombre con $edad años de $ciudad");
}
```

## Operaciones Condicionales

### If-else

La condición If-Else evalúa cierta condición y ejecuta un bloque código en caso de que la condición sea válida en caso contrario utiliza otro bloque de código o incluso puede realizar otra evalación anidada.

```
var precio = 500;
if (precio  == 500) {
  print("Precio promedio");
} else if (precio > 500) {
  print("Precio mayor del promedio");
} else {
  print("Precio comun");
}
```

### Operador Ternario

Similar al If-Else pero más abreviado, utiliza una notación con el signo de ? seguido de los casos en los que la avaluación sea verdadera o falsa separados por el signo de :

```
var precio = 500;
var esBarato = precio < 500 ? true : false;
```

// Os Patterns são uma categoria sintática na linguagem Dart, como declarações e expressões.
// Um Pattern representa a forma de um conjunto de valores que pode corresponder aos valores reais.

void main() {
  print('Pattern com listas:');
  final List<int> numeros = [1, 2, 3, 4, 5, 6, 7];

  final [x, y, ...] = numeros;

  print('Numeros: $x, $y');

  print('Pattern com maps:');
  final usuario = {'name': 'Alick', 'country': 'Australia'};

  print('Antes ...');
  print('Name: ${usuario['name']}');
  print('Country: ${usuario['country']}');

  print('Depois ...');
  final {'name': name, 'country': country} = usuario;

  print('Name: $name');
  print('Country: $country');

  print('if com case pattern match:');
  if (usuario case {'name': String name, 'country': String country}) {
    print('Deu Pattern Match! Nome: $name e País: $country');
  } else {
    print('Sem Pattern Match');
  }

  print('switch case com pattern match:');
  switch (usuario) {
    case {'name': String name, 'country': String country}:
      print('Deu Pattern Match! Nome: $name e País: $country');
    // Nao precisa adicionar o break! Apenas para escopos vazios.
    default:
      print('Sem Pattern Match');
  }

  print('Switch com Listas de numeros e adicionando operadores:');
  final List<int> numerosAleatorios = [412, 5325, 613];

  switch (numerosAleatorios) {
    case [412, 5325, 613] when numeros[0] == 1:
      print('Numeros certos!');
    default:
      print('Numeros errados!');
  }

  print('Switch case para variaveis:');

  final String adminLoginMessage = 'Logged in!';
  final bool isAdmin = true;

  final LoginStatus loginStatus = switch (adminLoginMessage) {
    'Logged in!' when isAdmin => LoginStatus.authenticated,
    'Logged out' => LoginStatus.not_authenticated,
    _ => LoginStatus.not_authenticated
  };

  print('Login Status: $loginStatus');
}

enum LoginStatus { authenticated, not_authenticated }

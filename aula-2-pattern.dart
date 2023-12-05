// Os Patterns são uma categoria sintática na linguagem Dart, como
// declarações e expressões.
// Um Pattern representa a forma de um conjunto de valores que
// pode corresponder aos valores reais.

void main() {
  print('Pattern com listas:');
  final List<int> numeros = [1, 2, 3, 4, 5, 6, 7];

  print('Antes ...');
  print('Acessando primeiro item da lista: ${numeros[0]}');

  print('Depois ...');
  final [x, _, ...z] = numeros;
  print('Acessando primeiro item da lista: $x');
  print('Resto da lista: $z');

  print('Patter com map:');
  final usuario = {'name': 'Alick', 'country': 'Australia'};

  print('Antes ...');
  print('Nome: ${usuario['name']}');
  print('País: ${usuario['country']}');

  print('Depois ...');
  final {'name': name, 'country': country} = usuario;
  print('Nome: $name');
  print('País: $country');

  print('if com case Pattern Match:');
  if (usuario case {'name': String name, 'country': String country}) {
    print('Deu Pattern Match! Nome: $name e País: $country');
  } else {
    print('Sem Pattern Match!');
  }

  print('switch case com Pattern Match:');
  switch (usuario) {
    case {'name': String name, 'country': String country}:
      print('Deu Pattern Match! Nome: $name e País: $country');
    // Não precisa adicionar o break! Apenas para espaços vazios!
    default:
      print('Sem Pattern Match!');
  }

  print('switch com Lista de números aleatórios e adicionando operadores:');
  final List<int> numerosAleatorios = [242, 1231, 12];

  switch (numerosAleatorios) {
    case [242, 1231, 12] when numeros[0] == 1:
      print('Números certos!');
    default:
      print('Números errados!');
  }

  print('switch case com variáveis:');

  final String adminLoginMessage = 'Logged out!';
  final bool isAdmin = true;

  print('Antes ...');
  LoginStatus loginStatus;

  if (adminLoginMessage == 'Logged in!' && isAdmin) {
    loginStatus = LoginStatus.adminAuthenticated;
  } else {
    loginStatus = LoginStatus.adminNotAuthenticated;
  }

  print('Login Status: $loginStatus');

  print('Depois ...');

  final LoginStatus loginStatus2 = switch (adminLoginMessage) {
    'Logged in!' when isAdmin => LoginStatus.adminAuthenticated,
    'Logged out!' when !isAdmin => LoginStatus.adminNotAuthenticated,
    _ => LoginStatus.adminNotAuthenticated,
  };

  print('Login Status 2: $loginStatus2');
}

enum LoginStatus { adminAuthenticated, adminNotAuthenticated }

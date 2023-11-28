import 'abstract-interface-class.dart';
import 'base-class.dart';
import 'final-class.dart';
import 'interface-class.dart';
import 'sealed-class.dart';

void main() {
  // Sealed class:

  // final sealedState = State();
  final State initialState = InitialState();
  final String qualEstado = switch (initialState) {
    InitialState() => 'Initial State!',
    AddTodoState() => 'Todo State!'
  };

  print('Estado: $qualEstado');

  // Final class:
  final hitmonchan = Hitmonchan(50);

  final humano1 = Humano();
  humano1.falarOi();

  final humano2 = Humano2();
  humano2.falarOi();
}

// Sealed class exemplos:

// class AnotherStateExtends extends State {}

// class AnotherStateImplements implements State {}

// Final class exemplos:

final class Hitmonchan extends Pokemon {
  Hitmonchan(super.hp);
}

// Base class exemplos:

final class Admin extends User {
  Admin(super.nome);
}

// Interface class Exemplo:

class Humano2 implements Humano {
  @override
  void falarOi() {
    print('Olá! Sou o humano 2!');
  }
}

// Abstract interface class Exemplo:

class Monstro1 implements Monstro {
  @override
  void falarOi() {
    print('GRRRRRRR');
  }

  @override
  void pular() {}
}

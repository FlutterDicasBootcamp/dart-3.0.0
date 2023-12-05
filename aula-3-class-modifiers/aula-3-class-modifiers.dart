import 'abstract-interface-class.dart';
import 'base-class.dart';
import 'final-class.dart';
import 'interface-class.dart';
import 'sealed-class.dart';

void main() {
  // Sealed class:

  // final sealedState = State();

  final State initialState = AddTodoState();
  final String qualEstado = switch (initialState) {
    InitialState() => 'Initial State!',
    AddTodoState() => 'Add Todo State!'
  };

  print('Estado: $qualEstado');

  // Final class
  final hitmonchan = Hitmonchan(50);

  // Interface class
  final humano1 = Humano();
  humano1.falarOi();

  final humano2 = Humano2();
  humano2.falarOi();

  // Abstract interface class
  final monstro1 = Monstro1();
  monstro1.falarOi();
  monstro1.pular();
}

// Final class exemplo:
final class Hitmonchan extends Pokemon {
  Hitmonchan(super.hp);
}

// class OutherState extends State {}

// Base class exemplo:
final class Admin extends User {
  Admin(super.nome);
}

// Interface class exemplo:

class Humano2 implements Humano {
  @override
  void falarOi() {
    print('Olá! Sou o humano 2!');
  }
}

class Monstro1 implements Monstro {
  @override
  void falarOi() {
    print('GRRRRRRRR');
  }

  @override
  void pular() {
    print('Estou pulando');
  }
}

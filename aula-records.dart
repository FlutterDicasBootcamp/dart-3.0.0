void main() {
  // Aula de Records
  // Antes ...
  final Posicao posicao1 = pegarPosicao1();

  print('Minha posição é x: ${posicao1.x} e y: ${posicao1.y}');

  // Depois ...
  // Exemplo 1:
  final posicao2 = pegarPosicao2();

  print('Minha posição do Exemplo 1 é x: ${posicao2.$1}  e y: ${posicao2.$2}');

  //Exemplo 2:
  final (posicaoX, posicaoY) = pegarPosicao2();

  print('Minha posição do Exemplo 2 é x: $posicaoX  e y: $posicaoY');

  // Desestruturação de Objetos
  final Posicao(x: posicaoXObjeto, y: posicaoYObjeto) = posicao1;

  print(
      'Minha posição Desestruturando o Objeto é x: ${posicaoXObjeto} e y: ${posicaoYObjeto}');

  // Exemploe 3:
  final (x: int posicaoXExemplo3, y: int posicaoYExemplo3) = pegarPosicao3();

  print(
      'Minha posição Exemplo 3 é x: ${posicaoXExemplo3} e y: ${posicaoYExemplo3}');

  // Swap (troca)
  var (x: int posicaoXSwap, y: int posicaoYSwap) = pegarPosicao3();

  print('Minha posição Swap Antes é x: ${posicaoXSwap} e y: ${posicaoYSwap}');

  (posicaoXSwap, posicaoYSwap) = (posicaoYSwap, posicaoXSwap);

  print('Minha posição Swap Depois é x: ${posicaoXSwap} e y: ${posicaoYSwap}');
}

typedef PosicaoTypedef = (int, int);

class Posicao {
  final int x;
  final int y;

  Posicao(this.x, this.y);
}

Posicao pegarPosicao1() {
  return Posicao(10, 20);
}

PosicaoTypedef pegarPosicao2() {
  return (30, 40);
}

({int x, int y}) pegarPosicao3() {
  return (x: 50, y: 60);
}

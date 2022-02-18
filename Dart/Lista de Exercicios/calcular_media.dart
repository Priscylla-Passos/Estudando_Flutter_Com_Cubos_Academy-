/**M01 - Lista - Exercício 7 - Média das Notas
Objetivo
Calcular a média das notas de um estudante.

Instruções
1. Escreva um algoritmo em Dart que receba 3 notas de um estudante.
2. Calcule a média das notas.
3. Mostre na tela.
Casos de Testes
Entrada:
  nota 1: 7
  nota 2: 6.3
  nota 3: 8

Saída:
  Média: 7.1 */


void main() {
  var nota1 = 7;
  var nota2 = 6.3;
  var nota3 = 8;

  var media = (nota1 + nota2 + nota3) / 3;
  

  print('Media: ${media.toStringAsFixed(1)}');
}

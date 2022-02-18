import 'dart:math';

/**M01 - Lista - Exercício 1 - Área de um Quadrado
Objetivo
Calcular a área de um quadrado a partir do valor dos lados.

Lembrando que a premissa (o que se espera) de uma figura ser considerada um 
quadrado é ter os lados iguais.

Instruções:
1.Escreva um algoritmo em Dart que calcule a área de um quadrado.
2.Exibir o resultado na tela.

Casos de Testes
Entrada: 3
Saída: 9
Entrada: 5
Saída: 25
Entrada: 15 */

void main() {
  final lado = 15;

  final area = pow(lado, 2);

  print(area);


  //Resolução Cubos:
  /*1. Declaração de variaveis
 num lado;
 num area;
 2. Atribuição de valores (ENTRADA)
 lado = 3;
 3. Validação e calculos (PROCESSAMENTO)
 area = lado * lado;
 4. Mostra o resultado (SAÍDA)
 print ("Area do quadrado $area");
 */
}

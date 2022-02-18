// M01 - Lista - Exercício 15 - Desafio: Ano Bissexto
// Objetivo
// Verificar se o ano informado é bissexto.

// Instruções
// Todo ano a Terra completa um movimento chamado Translação, que é uma volta ao redor do Sol, e dura 365 dias e 6 horas. A cada 4 anos, essas 6 horas somadas, adicionam 1 dia (6 * 4 = 24) no mês de fevereiro (dia 29) e o ano é chamado de Bissexto.

// Para saber se um ano é Bissexto, verificamos se o ano é divisível por 4. Depois verificamos se o ano NÃO é divisível por 100, exceto se o ano for divisível por 400.

// Escreva um algoritmo em Dart que verifique se o ano informado é Bissexto.
// Se for, mostre na tela.
// Casos de Testes
// Entrada: 1900
// Saída:

// Entrada: 1996
// Saída: "Ano bissexto"

// Entrada: 1997
// Saída:

// Entrada: 2000
// Saída: "Ano bissexto"

void main() {
  final ano = 1900;

  if (ano % 400 == 0) {
    print('Ano Bissexto');
  }
  if (ano % 4 == 0 && ano % 100 != 0) {
    print('Ano Bissexto');
  }
}

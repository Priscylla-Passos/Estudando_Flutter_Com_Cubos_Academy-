// M01 - Lista - Exercício 2 - Calcular Produto
// Objetivo
// Calcular o produto de 4 valores informados.

// Instruções:
// 1. Escreva um algoritmo em Dart que receba 4 valores.
// 2. Calcule o produto* dos dois primeiros e some com o produto dos dois últimos.
// 3. Exibir o resultado na tela.
// * Produto, na matemática.

// Casos de Testes:
// Entrada: 2, 3, 8, 5
// Saída: 46
// Entrada: 14, 9, 17, 3
// Saída: 177
// Entrada: 6, 1, 7, 4
// Saída: 34

void main() {
  final valores = [6, 1, 7, 4];

  final produto = ((valores[0] * valores[1]) + (valores[2] * valores[3]));

  print(produto);
}


/*Resolução versão 2
1. Declatração de variáveis
2. Atribuição de valores (ENTRADA)
num valor1 = 6, valor2 = 1, valor3 = 7, valor4 = 4, resultado;
3. Validações e  Cálculos (PROCESSAMENTO)
resultado = (valor1 * valor2) + (valor3 * valor4);
4. Mostra o resultado (SAIDA)
print("Resultado: $resultado");
*/

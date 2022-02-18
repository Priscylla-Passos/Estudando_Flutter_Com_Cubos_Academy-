/**M01 - Lista - Exercício 3 - Calcular Desconto
Objetivo
Encontrar o desconto de 10% sobre o preço de compra de um produto.

Instruções
1. Escreva um algoritmo em Dart para calcular o desconto de 10% sobre o preço de compra de um produto (um bem, um objeto).
2. Apresente o novo preço na tela.
Casos de Testes
Entrada:
  500.00 (ex: Monitor 24")

Saída:
  Preço do produto: R$ 500.0
  Desconto de 10%: R$ 50.0
  Preço do produto com desconto: R$ 450.0
Entrada:
  2500.00 (ex: TV)

Saída:
  Preço do produto: R$ 2500.0
  Desconto de 10%: R$ 250.0
  Preço do produto com desconto: R$ 2250.0
Entrada:
  157.34 (ex: Headset)

Saída:
  Preço do produto: R$ 157.34
  Desconto de 10%: R$ 15.73
  Preço do produto com desconto: R$ 141.60 */




void main() {
  final preco = 500;

  double desconto = preco * 0.10;

  double venda = preco - desconto;

  print(
      'Preço do Produto: R\$$preco \nDesconto de 10%: R\$ ${desconto.toStringAsFixed(2)} \nPreço do Produto com desconto: R\$ ${venda.toStringAsFixed(2)}');
}

/*Resolução 
1. Declaração de variaveis
double precoProduto, valorDesconto, novoPreco;

2. Atribuição de valores (ENTRADA)
precoProduto = 2500;

3. Validações e Cálculos (PROCESSAMENTO)
valorDesconto = precoProduto / 100 * 10;
novoPreco = precoProduto - valorDesconto;

4. Mostra o resultado (SAÍDA)
print("Preço do Produto: R\$ $precoProduto");
print("Desconto de 10%; R\$ $valorDesconto");
print("Preço do Produto com Desconto: R\$ $novoPreco");


*/


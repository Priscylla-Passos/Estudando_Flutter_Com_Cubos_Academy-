import 'dart:async';
import 'dart:io';
import 'dart:convert'; 

void solucao(num valorMinimo, num valorMaximo, List jogadores) {
  //seu codigo

  print("Valor minimo da mesa : R\$ $valorMinimo");
  print("Valor maximo da mesa: R\$ $valorMaximo");
  print("Jogadores da mesa:");

  for (var i = 0; i < jogadores.length; i++) {
    num valor = jogadores[i]["valor"];
    String nome = jogadores[i]["nome"];
    if (valor>=valorMinimo && valor <= valorMaximo) {
      print(nome);
    }
  }

  //parecido só usou diretamente jogadores [1]["nome"] e jogadores [i]["valor"]


}

void main() {
  readLine().listen(processLine);
  solucao(200, 1000, [
    {"nome": "Joao", "valor": 300},
    {"nome": "Denise", "valor": 500},
    {"nome": "Roberto", "valor": 100},
    {"nome": "Pedro", "valor": 800},
    {"nome": "Alice", "valor": 180}
  ]);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  List jogadores = [];
  for (int i = 2; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {};
    jogador["nome"] = inputs[i];
    jogador["valor"] = int.parse(inputs[++i]);
    jogadores.add(jogador);
  }

  solucao(double.parse(inputs[0]), double.parse(inputs[1]), jogadores);
}

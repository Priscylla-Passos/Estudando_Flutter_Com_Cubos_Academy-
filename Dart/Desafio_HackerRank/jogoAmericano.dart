import 'dart:async';
import 'dart:io';
import 'dart:convert'; 

void solucao(List jogadores) {
  //seu codigo
  if (jogadores.length < 5 || jogadores.length > 11) {
    return print("Numero de Jogadores Inválido");
  }
  num soma = 0;
  for (var i = 0; i < jogadores.length; i++) {
    soma = soma + jogadores[i]["numero"];
  }
  print("Resultado: $soma");
  var i = 0;
  String goleiro = "";
  while (i != soma) {
    goleiro = jogadores[i]["nome"];
    i++;
    if (i == jogadores.length && i != soma) {
      soma = soma - i;
      i = 0;
    }
    
  }
  print(goleiro);
}

//usou for: for(int i = 0; i<= resultado;){
//for(int j = 0; j < jogadores. length; j++){
//
//  if(i ==  resultado){
//  goleiro = jogadores[j - 1]["nome"];
// }
// i++;
// }
// }
//printa o resultado
void main() {
  readLine().listen(processLine);
  solucao([
    {"nome": "Amanda", "numero": 2},
    {"nome": "Sabrina", "numero": 1},
    {"nome": "Samanta", "numero": 1},
    {"nome": "Carina", "numero": 2},
    {"nome": "Beatriz", "numero": 3}
  ]);
}
Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  List jogadores = [];
  for (int i = 0; i < inputs.length; i++) {
    Map<String, dynamic> jogador = {
      "nome": inputs[i],
      "numero": int.parse(inputs[i + 1])
    };
    jogadores.add(jogador);
    i++;
  }

  solucao(jogadores);
}

import 'dart:async';
import 'dart:io';
import 'dart:convert'; 

void solucao(List<int> idades) {
  //seu codigo

  final list2 = idades.where((element) => element >= 18).toList();
  list2.sort();
  if (list2.isEmpty) {
    print("Cresca e apareca");
  }else{
    print(list2[0]);
  
  }
  
}
// usou o sort, depois o last (ver se o ultimo nº ordenado se é maior que 18)
//verifica a lista colocando o menor em uma variavel cacula para pegar a menor idade
void main() {
  readLine().listen(processLine);
  solucao([15, 14, 12, 17, 16]);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs.map((s) => int.parse(s)).toList());
}

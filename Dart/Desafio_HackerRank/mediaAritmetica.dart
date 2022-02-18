import 'dart:io';
import 'dart:convert'; 

void solucao(String nome, List<double> cofre) {
  //Seu codigo aqui
  double total = 0.0;
  for (var element in cofre) {
    total = total + element;
  }
  // com forEach
  //cofre.forEach((element) => total += element);
  final media = cofre.reduce((value, element) => total) / cofre.length;

  print('$nome ja tem R\$ ${total.toStringAsFixed(2)} guardados');
  print('A media dos depositos e de R\$ ${media.toStringAsFixed(2)} por mes.');
  //calculou a média no print (print("a media dos depositod e de R\${(total / cofre.length).toStringAsFixed);
}


void main() {
  readLine().listen(processLine);
  solucao('Cristiane', [1, 2, 3, 4]);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(inputs[0], inputs.sublist(1).map(double.parse).toList());
}

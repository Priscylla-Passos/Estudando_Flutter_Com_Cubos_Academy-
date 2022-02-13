import 'dart:async';
import 'dart:io';
import 'dart:convert'; 

void solucao(double minuto, double km) {
  //seu codigo
  if (minuto > 20) {
    var valor = 20 * 0.50;
    var desconto = minuto - 20;
    desconto = desconto * 0.30;
    minuto = desconto + valor;
  } else {
    minuto = minuto * 0.50;
  }

  if (km > 10) {
    var valor1 = 10 * 0.70;
    var desconto = km - 10;
    desconto = desconto * 0.50;
    km = desconto + valor1;
  } else {
    km = km * 0.70;
  }
  var soma = minuto + km;
  print("Total a pagar: R\$ ${soma.toStringAsFixed(2)}");
}

void main() {
  readLine().listen(processLine);
  solucao(10, 20);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(double.parse(inputs[0]), double.parse(inputs[1]));
}

import 'dart:async';
import 'dart:io';
import 'dart:convert'; 

void solucao(List<double> carrinhoCompras) {
  //seu codigo
  if (carrinhoCompras.length > 100) {
    return print("Carrinho Cheio");
  } else if (carrinhoCompras.length >= 3) {
    carrinhoCompras.sort();
    var desconto = (carrinhoCompras[0] * 50) / 100;
    carrinhoCompras[0] = carrinhoCompras[0] - desconto;
    var total = carrinhoCompras.reduce((value, element) => value + element);
    print("Total: R\$ ${total.toStringAsFixed(2)}");
  } else {
    var total = carrinhoCompras.reduce((value, element) => value + element);
    print("Total: R\$ ${total.toStringAsFixed(2)}");
  }
}



void main() {
  readLine().listen(processLine);
  solucao([150.00,30.00, 50.00]);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');

  solucao(inputs.map((element) => double.parse(element)).toList());
}

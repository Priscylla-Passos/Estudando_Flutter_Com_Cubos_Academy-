import 'dart:io';
import 'dart:convert'; 

void solucao(num numero, num limiteInferior, num limiteSuperior) {
  //seu codigo aqui
  if (numero >= limiteInferior && numero <= limiteSuperior) {
    print('Pertence');
  } else {
    print('Nao Pertence');
  }
}
//usou o if com return no lugar do print return "pertence"; e fora da chave sem else return
//"não Pertence";

void main() {
  readLine().listen(processLine);


  solucao(0, -12, 20);
}

Stream<String> readLine() =>
    stdin.transform(utf8.decoder).transform(const LineSplitter());

void processLine(String line) {
  List<String> inputs = line.split(' ');
  solucao(num.parse(inputs[0]), num.parse(inputs[1]), num.parse(inputs[2]));
}

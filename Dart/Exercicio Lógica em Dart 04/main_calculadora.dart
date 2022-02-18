import 'dart:io';

import 'calculadora.dart';
import 'tela_calculadora.dart';

void main(List<String> args) {
  print('Em operação digite: adicao, subtracao, divisao ou multiplicacao\n\n');

  print('Digite o 1º valor: ');
  var input = stdin.readLineSync();
  double valor1 = double.parse(input!);

  print('Digite a operação ');
  var operacao = stdin.readLineSync();

  print('Digite o 2º valor: ');
  var input2 = stdin.readLineSync();
  double valor2 = double.parse(input2!);

  Calculadora calculo1 = Calculadora(valor1, operacao!, valor2);

  Tela msg = Tela();

  switch (operacao.toLowerCase()) {
    case 'adicao':
      calculo1.somar;
      msg.mostrarmsg('Resultado de $valor1 + $valor2: ${calculo1.somar.toStringAsFixed(2)}');
      break;
    case 'subtracao':
      calculo1.subtrair;
      msg.mostrarmsg('Resultado de $valor1 - $valor2: ${calculo1.subtrair.toStringAsFixed(2)}');
      break;
    case 'divisao':
      calculo1.dividir;
      msg.mostrarmsg('Resultado de $valor1 / $valor2: ${calculo1.dividir.toStringAsFixed(2)}');
      break;
    case 'multiplicacao':
      calculo1.multiplicar;
      msg.mostrarmsg('Resultado de $valor1 * $valor2: ${calculo1.multiplicar.toStringAsFixed(2)}');
      break;
    default:
      print('Operação Inválida!');
      break;
  }
}

var valor1, valor2;
String operacao = '';
double result = 0;

void main() {
  valor1 = 5.3;
  valor2 = 4.25;
  operacao = 'multiplicacao';

  switch (operacao) {
    case 'adicao':
      result = somar(valor1, valor2);
      mostrarResultado();
      break;

    case 'subtracao':
      result = subtrair(valor1, valor2);
      mostrarResultado();
      break;

    case 'multiplicacao':
      result = multiplicar(valor1, valor2);
      mostrarResultado();
      break;

    case 'divisao':
      result = dividir(valor1, valor2);
      mostrarResultado();
      break;
    default:
      print('Opção inválida');
      break;
  }
}

double somar(double valor1, double valor2) {
  return valor1 + valor2;
}

double subtrair(double valor1, double valor2) {
  return valor1 - valor2;
}

double multiplicar(double valor1, double valor2) {
  return valor1 * valor2;
}

double dividir(double valor1, double valor2) {
  return valor1 / valor2;
}

void mostrarResultado() {
  String sinal = '';
  if (operacao == 'adicao') {
    sinal = '+';
  } else if (operacao == 'subtracao') {
    sinal = '-';
  } else if (operacao == 'multiplicacao') {
    sinal = '*';
  } else if (operacao == 'divisao') {
    sinal = '/';
  }

  print('Resultado de $valor1 $sinal $valor2: ${result.toStringAsFixed(2)}');
}

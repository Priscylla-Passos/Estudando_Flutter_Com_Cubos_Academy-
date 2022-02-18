int numero = 0, i = 0;
void main() {
  numero = 3;
  int fibo = 0;
  String aux = '';
  String separator = '';

  print('A sequencia Fibonacci é: ');

  for (i = 1; fibo <= numero; i++) {
    fibo = fibonacci(i);
    if (fibo <= numero) {
      separator = aux.isEmpty ? '' : ',';
      aux += '$separator' + fibo.toString();
    }
  }
  print(aux);
}

int fibonacci(int numero) {
  if (numero == 0 || numero == 1) {
    return numero;
  } else {
    return fibonacci(numero - 2) + fibonacci(numero - 1);
  }
}

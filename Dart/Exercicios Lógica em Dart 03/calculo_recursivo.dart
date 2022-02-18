int soma = 0;
void main() {
  int numero = 23;
  soma = somaRecursiva(numero);
  print('Todos valores somados de 0 a $numero: $soma');
}

int somaRecursiva(int numero) {
  if (numero == 0) {
    return 0;
  } else {
    soma = soma + numero;
    numero = numero - 1;
    somaRecursiva(numero);
    return soma;
  }
}

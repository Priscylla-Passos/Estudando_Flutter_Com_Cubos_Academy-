

class Calculadora {
  double valor1;
  double valor2;
  String operacao;

  Calculadora(this.valor1, this.operacao, this.valor2);

  double get somar => valor1 + valor2;
 
  double get subtrair => valor1 - valor2;
  
  double get dividir => valor1 / valor2;
 
  double get multiplicar => valor1 * valor2;



 }

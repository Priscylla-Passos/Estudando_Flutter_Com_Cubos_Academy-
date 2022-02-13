import 'funcionarios.dart';

class Vendedor extends Funcionario {
  Vendedor(int matricula, String nome, String sobrenome, double salario,
      double horasTrabalhadas)
      : super(matricula, nome, sobrenome, salario, horasTrabalhadas);

  @override
  double calcularHoraExtra() {
    double salario = super.calcularHoraExtra();
    return (salario * 0.20) + salario;
  }
}

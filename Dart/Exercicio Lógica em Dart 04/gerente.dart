import 'funcionarios.dart';

class Gerente extends Funcionario {
  Gerente(int matricula, String nome, String sobrenome, double salario,
      double horasTrabalhadas)
      : super(matricula, nome, sobrenome, salario, horasTrabalhadas);

  @override
  double calcularHoraExtra() {
    double salario = super.calcularHoraExtra();
    return (salario * 0.35) + salario;
  }
}

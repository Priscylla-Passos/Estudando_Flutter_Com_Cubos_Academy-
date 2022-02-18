abstract class Funcionario {
  int matricula;
  String nome;
  String sobrenome;
  double salario;
  double horasTrabalhadas;

  Funcionario(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horasTrabalhadas);

  double calcularHoraExtra() {
    if (this.horasTrabalhadas > 220) {
      double qtdHorasExtra = this.horasTrabalhadas - 220;
      double valorHora = this.salario / 220;
      double valorHoraExtra = ((valorHora * 50) / 100) + valorHora;
      return (valorHoraExtra * qtdHorasExtra) + this.salario;
    } else {
      return this.salario;
    }
  }

  void mostrarDadosFuncionarios(Funcionario funcionario) {
    print("Matricula: ${funcionario.matricula}");
    print("Nome: ${funcionario.nome}" + "" + " ${funcionario.sobrenome}");
    print(
        "Horas Trabalhadas no mês: ${(funcionario.horasTrabalhadas).toStringAsFixed(0)}");
    print("Salario: R\$ ${funcionario.calcularHoraExtra().toStringAsFixed(2)}");
    print("=================================================\n");
  }
}

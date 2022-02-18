var dia, mes, ano;
var diaAtual = DateTime.now().day;
var mesAtual = DateTime.now().month;
var anoAtual = DateTime.now().year;
num idade = 0;

void main() {
  String nome = 'Cristiane';
  var dia = 28;
  var mes = 01;
  var ano = 2004;
  print('Nome: $nome');
  idade = idadeAtual(dia, mes, ano);
  print('Idade: $idade');
}

num idadeAtual(var dia, var mes, var ano) {
  if (anoAtual - ano >= 18) {
    idade = anoAtual - ano;
  } else {
    return idade = anoAtual - ano;
  }
  if (idade == 18) {
    if (mesAtual < mes) {
      idade = idade - 1;
    } else if (mesAtual == mes) {
      if (diaAtual >= dia) {
        idade = anoAtual - ano;
      }
    }
    return idade - 1;
  } else {
    return idade;
  }
}

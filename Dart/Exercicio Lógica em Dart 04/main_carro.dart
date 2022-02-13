import 'carro.dart';

void main(List<String> args) {
  Carro carro1 = Carro('Fiat', 'Palio', 'Branca', 1.0, 'Flex');
  Carro carro2 = Carro("Honda", 'Civic', 'Cinza', 1.8, 'Gasolina');
  Carro carro3 = Carro('Hyundai', 'Tucson', 'Prata', 2.4, 'Gasolina');

  print('Montadora: ${carro1.montadora} \nModelo: ${carro1.modelo} \nCor: ${carro1.cor} \nMotor: ${carro1.motor} \nCombustivel: ${carro1.combustivel}');
  print('\nMontadora: ${carro2.montadora} \nModelo: ${carro2.modelo} \nCor: ${carro2.cor} \nMotor: ${carro2.motor} \nCombustivel: ${carro2.combustivel}');
  print('\nMontadora: ${carro3.montadora} \nModelo: ${carro3.modelo} \nCor: ${carro3.cor} \nMotor: ${carro3.motor} \nCombustivel: ${carro3.combustivel}');
  
}

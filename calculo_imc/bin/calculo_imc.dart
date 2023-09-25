import 'package:calculo_imc/Imc.dart';
import 'package:calculo_imc/Pessoa.dart';

void Print(Pessoa pessoa) {
  print("---- CÁLCULO IMC -----");
  print('Nome:  ${pessoa.GetNome()}');
  print('Altura:  ${pessoa.GetAltura()}');
  print('Peso: ${pessoa.GetPeso()}');
  print(
      'IMC: ${IMC.Calcula_IMC(pessoa.GetAltura(), pessoa.GetPeso()).toStringAsFixed(2)}');
  print(
      'Severidade: ${IMC.GetClassificacao(IMC.Calcula_IMC(pessoa.GetAltura(), pessoa.GetPeso()))}');
  print("----------------------");
}

void main(List<String> arguments) {
  Pessoa user = Pessoa();
  user.LerConsole();
  Print(user);
}

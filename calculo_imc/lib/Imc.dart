import 'dart:math';

class IMC {
  static double Calcula_IMC(double Altura, double Peso) {
    try {
      if (Altura <= 0 || Peso <= 0) {
        throw Exception('O valor deve ser maior que zero.');
      }

      double imc = Peso / pow(Altura, 2);
      return double.parse(imc.toStringAsFixed(2));
    } catch (e) {
      print('Peso e Altura devem ser maior que zero.');
      return 0;
    }
  }

  static String GetClassificacao(double imc) {
    try {
      if (imc <= 0) throw Exception('IMC deve ser maior que zero.');

      if (imc < 16)
        return "Magreza Grave";
      else if (imc >= 16 && imc < 17)
        return "Magreza moderada";
      else if (imc >= 17 && imc < 18.5)
        return "Magreza leve";
      else if (imc >= 18.5 && imc < 25)
        return "Saudável";
      else if (imc >= 25 && imc < 30)
        return "Sobrepeso";
      else if (imc >= 30 && imc < 35)
        return "Obesidade Grau I";
      else if (imc >= 35 && imc < 40) return "Obesidade Grau II (Severa)";

      return "Obesidade Grau III (Mórbida)";
    } catch (e) {
      print('IMC deve ser maior que zero.');
      return "";
    }
  }
}

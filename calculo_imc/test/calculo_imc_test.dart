import 'package:calculo_imc/Imc.dart';
import 'package:calculo_imc/Pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Classe Pessoa', () {
    Pessoa user = Pessoa();
    user.nome = "Endrigo";
    user.altura = 1.70;
    user.peso = 110;

    expect(user.GetNome(), equals("Endrigo"));
    expect(user.GetAltura(), equals(1.70));
    expect(user.GetPeso(), equals(110));
  });

  test('Cálculo IMC', () {
    Pessoa user = Pessoa();
    user.nome = "Endrigo";
    user.altura = 1.70;
    user.peso = 110;

    expect(IMC.Calcula_IMC(user.altura, user.peso), equals(38.06));
  });

  test('Cálculo IMC com Altura zerada', () {
    Pessoa user = Pessoa();
    user.nome = "Endrigo";
    user.altura = 0;
    user.peso = 110;

    expect(IMC.Calcula_IMC(user.altura, user.peso), equals(0));
  });

  test('Cálculo IMC com peso zerado', () {
    Pessoa user = Pessoa();
    user.nome = "Endrigo";
    user.altura = 1.70;
    user.peso = 0;

    expect(IMC.Calcula_IMC(user.altura, user.peso), equals(0));
  });

  group('Teste de classificação', () {
    var ValuesToTest = {
      {'altura': 1.70, 'peso': 45}: "Magreza Grave",
      {'altura': 1.70, 'peso': 48}: "Magreza moderada",
      {'altura': 1.70, 'peso': 52}: "Magreza leve",
      {'altura': 1.70, 'peso': 60}: "Saudável",
      {'altura': 1.70, 'peso': 78}: "Sobrepeso",
      {'altura': 1.70, 'peso': 90}: "Obesidade Grau I",
      {'altura': 1.70, 'peso': 105}: "Obesidade Grau II (Severa)",
      {'altura': 1.70, 'peso': 130}: "Obesidade Grau III (Mórbida)"
    };

    ValuesToTest.forEach((values, expected) {
      test('$values: $expected', () {
        expect(
            IMC.GetClassificacao(IMC.Calcula_IMC(
                double.parse(values["altura"].toString()),
                double.parse(values["peso"].toString()))),
            equals(expected));
      });
    });
  });
}

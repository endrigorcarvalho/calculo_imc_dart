import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

class Pessoa {
  String nome = "";
  double peso = 0;
  double altura = 0;

/*
  Pessoa(String Nome, double Peso, double Altura) {
    nome = Nome;
    peso = Peso;
    altura = Altura;
  }
*/

  Pessoa() {
    nome = "";
    peso = 0;
    altura = 0;
  }

  void LerConsole() {
    String? sPeso = "";
    String? sAltura = "";

    try {
      print("Insira o nome:");
      nome = stdin.readLineSync(encoding: utf8) ?? "";
    } catch (e) {
      print("Veio para o catch -  Nome: $nome");
    }

    try {
      print("Insira a Altura:");
      sAltura = stdin.readLineSync(encoding: utf8) ?? "0";
      print("Veio para o catch -  sAltura: $sAltura");
      altura = double.tryParse(sAltura)!;
    } catch (e) {
      altura = 0;
    }

    try {
      print("Insira a Peso:");
      sPeso = stdin.readLineSync(encoding: utf8) ?? "0";
      peso = double.tryParse(sPeso)!;
    } catch (e) {
      peso = 0;
    }
  }

  String GetNome() {
    return nome;
  }

  double GetPeso() {
    return peso;
  }

  double GetAltura() {
    return altura;
  }
}

import 'dart:io';

import 'package:imc_dart/imc_dart.dart' as imc_dart;
import 'package:imc_dart/models/pessoa.dart';
import 'package:imc_dart/util/util.dart';

void main(List<String> arguments) {
  print("Calculadora de IMC:");
  String nome = lerNomeConsole("Insira o nome da pessoa: ");
  double peso = lerDoubleConsole("Insira o peso da pessoa (kg): ");
  double altura = lerDoubleConsole("Insira a altura da pessoa (m): ");
  try {
    Pessoa pessoa = Pessoa(nome, peso, altura);
    print(imc_dart.calcularPessoaIMC(pessoa));
  } catch (e) {
    print(e);
    exit(0);
  }
}

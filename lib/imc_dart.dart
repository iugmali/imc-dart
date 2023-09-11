import 'dart:convert';
import 'dart:io';

import 'package:imc_dart/models/pessoa.dart';

String calcularPessoaIMC(Pessoa pessoa) {
  double imc = calcularIMC(pessoa.getPeso(), pessoa.getAltura());
  if (imc < 16) {
    return "${pessoa.getNome()} - IMC $imc - magreza grave.";
  } else if (imc < 17) {
    return "${pessoa.getNome()} - IMC $imc - magreza moderada.";
  } else if (imc < 18.5) {
    return "${pessoa.getNome()} - IMC $imc - magreza leve.";
  } else if (imc < 25) {
    return "${pessoa.getNome()} - IMC $imc - saudável.";
  } else if (imc <= 30) {
    return "${pessoa.getNome()} - IMC $imc - sobrepeso.";
  } else if (imc < 35) {
    return "${pessoa.getNome()} - IMC $imc - obesidade grau I.";
  } else if (imc < 40) {
    return "${pessoa.getNome()} - IMC $imc - obesidade grau II (severa).";
  } else {
    return "${pessoa.getNome()} - IMC $imc - obesidade grau III (mórbida).";
  }
}

double calcularIMC(double peso, double altura) {
  return peso / (altura * altura);
}


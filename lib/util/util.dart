import 'dart:convert';
import 'dart:io';

double lerDoubleConsole(String mensagem) {
  late double? valor;
  do {
    print(mensagem);
    var input = stdin.readLineSync(encoding: utf8);
    valor = double.tryParse(input ?? "");
  } while (valor == null || valor <= 0);
  return valor;
}

String lerNomeConsole(String mensagem) {
  late String? nome;
  do {
    print(mensagem);
    nome = stdin.readLineSync(encoding: utf8);
  } while (nome == null || nome == "");
  return nome;
}
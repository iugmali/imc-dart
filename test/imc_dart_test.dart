import 'package:imc_dart/exceptions/pessoa_exceptions.dart';
import 'package:imc_dart/imc_dart.dart';
import 'package:imc_dart/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Deve Criar Pessoa com Sucesso', () {
    const String expectedNome = "Guilherme";
    const double expectedPeso = 99;
    const double expectedAltura = 1.77;

    final pessoa = Pessoa(expectedNome, expectedPeso, expectedAltura);

    expect(pessoa.getNome(), expectedNome);
    expect(pessoa.getPeso(), expectedPeso);
    expect(pessoa.getAltura(), expectedAltura);
  });

  test('Deve Retornar Nome inválido exception', () {
    const exception = TypeMatcher<NomeInvalidoException>();
    expect(() => Pessoa("", 99.0, 1.77), throwsA(exception));
  });

  test('Deve Retornar Peso inválido exception', () {
    const exception = TypeMatcher<PesoInvalidoException>();
    expect(() => Pessoa("Guilherme", 0.0, 1.77), throwsA(exception));
  });

  test('Deve Retornar Altura inválida exception', () {
    const exception = TypeMatcher<AlturaInvalidaException>();
    expect(() => Pessoa("Guilherme", 99.0, 0.0), throwsA(exception));
  });

  test('Deve retornar o IMC da pessoa', () {
    const String nome = "Guilherme";
    const double peso = 99;
    const double altura = 1.77;
    const double imc = peso / (altura * altura);
    const String expectedResult = "$nome - IMC $imc - obesidade grau I.";
    final pessoa = Pessoa(nome, peso, altura);
    expect(calcularPessoaIMC(pessoa), expectedResult);
  });
}

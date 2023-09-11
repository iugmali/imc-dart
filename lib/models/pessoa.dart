import 'package:imc_dart/exceptions/pessoa_exceptions.dart';

class Pessoa {
  final String _nome;
  final double _peso;
  final double _altura;

  Pessoa(this._nome, this._peso, this._altura){
    _validate();
  }

  void _validate() {
    if (_nome == null || _nome == "") {
      throw NomeInvalidoException();
    }
    if (_peso <= 0) {
      throw PesoInvalidoException();
    }
    if (_altura <= 0) {
      throw AlturaInvalidaException();
    }
  }

  String getNome() => _nome;
  double getPeso() => _peso;
  double getAltura() => _altura;
}
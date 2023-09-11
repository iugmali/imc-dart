# imc-dart

Aplicativo desenvolvido seguindo desafio proposto por [web.dio.me](https://web.dio.me) de criar uma calculadora de IMC (índice de massa corporal) em command line interface (CLI) em dart.

## Checklist do desafio

- [x] Criar classe Pessoa (Nome / Peso / Altura)
- [x] Ler dados do terminal
- [x] Tratar exceções
- [x] Calcular IMC
- [x] Printar na tela o resultado do cálculo
- [x] Testes

## Rodando a aplicação

```
dart run
```

## Rodando os testes

```
dart run test
```

## Tabela de IMC

| IMC         | Classificação                |
|-------------|------------------------------|
| < 16        | Magreza grave                |
| 16 a < 17   | Magreza moderada             |
| 17 a < 18,5 | Magreza leve                 |
| 18,5 a < 25 | Saudável                     |
| 25 a < 30   | Sobrepeso                    |
| 30 a < 35   | Obesidade Grau I             |
| 35 a < 40   | Obesidade Grau II (severa)   |
| >= 40       | Obesidade Grau III (mórbida) |
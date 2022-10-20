/*
DESAFIO MASTERCLASS

Construa uma função que de validação de CPF recebendo um valor String como argumento e retornando um booleano,

O CPF tem dois dígitos verificadores que são os dois últimos números do CPF.

- Cálculo do primeiro dígito verificar:

1. O primeiro passo é calcular o primeiro dígito verificador, e para isso, 
separamos os primeiros 9 dígitos do CPF (111.444.777) 
e multiplicamos cada um dos números, da direita para a esquerda 
por números crescentes a partir do número 2.

2. Multiplique cada digito do CPF pelo respectivo número e somamos cada um dos resultados.

3. Divida o valor obtido por 11. Trabalharemos com o RESTO e não com o VALOR da divisão.

4. Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
 Se o resto da divisão for maior ou igual a 2, então o dígito verificador 
 é igual a 11 menos o resto da divisão (11 - resto).

O Resultado deve ser igual ao primeiro dígito verificador.

- Cálculo do segundo dígito verificar:

1. Pegaremos os primeiros 10 dígitos do CPF (111.444.777-1) e multiplicamos
cada um dos números, da direita para a esquerda por números crescentes a partir do número 2.

2. Com o resultado em mãos, siga os passos 2, 3 e 4 do cálculo do primeiro dígito.

O Resultado deve ser igual ao segundo dígito verificador.
*/

void main() {
  checkCpf('000.000.000-00');
}

void checkCpf(String numberCpf) {
  var numbers = numberCpf.replaceAll(RegExp(r'[^0-9]'), '');
  print(numbers);
  if (numbers.length != 11) {
    return print('Verifica seu numero de CPF');
  }
  List<int> cpf = numbers.split('').map((number) => int.parse(number)).toList();
  int n = cpf[0];
  int n1 = cpf[1];
  int n2 = cpf[2];
  int n3 = cpf[3];
  int n4 = cpf[4];
  int n5 = cpf[5];
  int n6 = cpf[6];
  int n7 = cpf[7];
  int n8 = cpf[8];
  int n9 = cpf[9];
  print(n9);
  int cpfValid1 = n * 10 +
      n1 * 9 +
      n2 * 8 +
      n3 * 7 +
      n4 * 6 +
      n5 * 5 +
      n6 * 4 +
      n7 * 3 +
      n8 * 2;
  print(cpfValid1);
  var nCpf1 = (cpfValid1 * 10) % 11;
  int cpfValid2 = n * 11 +
      n1 * 10 +
      n2 * 9 +
      n3 * 8 +
      n4 * 7 +
      n5 * 6 +
      n6 * 5 +
      n7 * 4 +
      n8 * 3 +
      n9 * 2;
  print(cpfValid2);
  var nCpf2 = (cpfValid2 * 10) % 11;
  print(nCpf2);
  if (nCpf1 != cpf[9] && nCpf2 != cpf[10]) {
    print('CPF Inválido');
  } else if (nCpf1 == 0 && nCpf2 == 0) {
    print('CPF Inválido');
  } else
    print('CPF Valido');
}
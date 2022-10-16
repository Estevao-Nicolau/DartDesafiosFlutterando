import 'dart:io';

void main() {
  theRuleOf3(3.2, 5.4, 7.9);
}

theRuleOf3(
  double valor1,
  double valor2,
  double valor3,
) {
  var multiply = valor1 ;
  var multiply2 = valor3 * valor2;
  var result = multiply2 / multiply;
  return print(result);
}

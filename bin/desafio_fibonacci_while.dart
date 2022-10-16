import 'dart:io';

void main() {
  print('-' * 40);
  print('      Quantos termos de fibonacci? ');
  print('-' * 40);
  String? y = stdin.readLineSync();
  if (y != null) {
    int n = int.parse(y);
    print('Quantos termos de fibonacci? $n');
    int n1 = 0, n2 = 1, n3;
    print(n1);
    print(n2);

    int cont = 2;
    while (cont <= n) {
      n3 = n1 + n2;
      cont++;
      print('$n3 ');
      n1 = n2;
      n2 = n3;
    }
    print('Fim');
  }
}

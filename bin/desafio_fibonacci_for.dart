import 'dart:io';

void main() {
  print('-' * 40);
  print('      Quantos termos de fibonacci? ');
  print('-' * 40);
  String? x = stdin.readLineSync();
  if (x != null) {
    int n = int.parse(x);

    int n1 = 0, n2 = 1, n3;
    print(n1);
    print(n2);

    for (int i = 2; i <= n; i++) {
      n3 = n1 + n2;
      print('$n3');
      n1 = n2;
      n2 = n3;
    }
    print('Fim');
  }
}

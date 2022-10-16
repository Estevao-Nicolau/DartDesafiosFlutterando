void main() {
  var completeName = getFullName(
    lastName: 'Estevao',
    name: 'Nicolau',
  );
  print(completeName);
}

String getFullName({
  required String? name,
  String? lastName,
}) {
  var completeName = "$name $lastName";
  return completeName;
}

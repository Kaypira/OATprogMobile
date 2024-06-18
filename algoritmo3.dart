void main() {

  int numero = 29;

  bool ehPrimo = verificarPrimo(numero);

  if (ehPrimo) {
    print('$numero é um número primo.');
  } else {
    List<int> divisores = encontrarDivisores(numero);
    print('$numero não é um número primo.');
    print('Divisores de $numero: $divisores');
  }
}

bool verificarPrimo(int numero) {
  if (numero <= 1) {
    return false;
  }
  
  if (numero == 2) {
    return true;
  }

  if (numero % 2 == 0) {
    return false;
  }

  for (int i = 3; i <= (numero / 2).toInt(); i += 2) {
    if (numero % i == 0) {
      return false;
    }
  }

  return true;
}

List<int> encontrarDivisores(int numero) {
  List<int> divisores = [];

  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) {
      divisores.add(i);
    }
  }

  return divisores;
}

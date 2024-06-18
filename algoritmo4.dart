void main() {
  
  int n = 10;

 
  List<int> fibonacciSequence = gerarFibonacci(n);

  print('Sequência de Fibonacci até o ${n}º termo:');
  print(fibonacciSequence);
}

List<int> gerarFibonacci(int n) {
  List<int> fibonacci = [];

  if (n >= 1) {
    fibonacci.add(0);
  }
  if (n >= 2) {
    fibonacci.add(1);
  }

  for (int i = 2; i < n; i++) {
    int nextFib = fibonacci[i - 1] + fibonacci[i - 2];
    fibonacci.add(nextFib);
  }

  return fibonacci;
}


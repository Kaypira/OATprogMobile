void main() {

  List<double> notas = [7.5, 9.0, 6.8, 8.2];

  double media = calcularMedia(notas);

  String situacao = media >= 6.0 ? 'aprovado' : 'reprovado';

  print('Notas: $notas');
  print('Média: ${media.toStringAsFixed(1)}');
  print('Situação: Aluno ${situacao}');
}

double calcularMedia(List<double> notas) {
  if (notas.isEmpty) return 0.0;

  double soma = 0.0;
  for (double nota in notas) {
    soma += nota;
  }

  return soma / notas.length;
}

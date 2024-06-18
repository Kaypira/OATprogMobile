void main() {
 
  double precoInicial = 120.00; 
  double percentualDesconto = 15; 

  double precoFinal = calcularPrecoComDesconto(precoInicial, percentualDesconto);


  print('Preço inicial: R\$ ${precoInicial.toStringAsFixed(2)}');
  print('Desconto de ${percentualDesconto}% aplicado');
  print('Preço final após desconto: R\$ ${precoFinal.toStringAsFixed(2)}');
}


double calcularPrecoComDesconto(double precoInicial, double percentualDesconto) {
  if (precoInicial <= 0 || percentualDesconto < 0) {
    throw ArgumentError('O preço inicial e o percentual de desconto devem ser valores positivos.');
  }

  double desconto = precoInicial * (percentualDesconto / 100);
  double precoFinal = precoInicial - desconto;

  return precoFinal;
}

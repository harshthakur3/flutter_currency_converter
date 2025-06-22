double convertUsdToInr(String input) {
  final double? usd = double.tryParse(input);
  if (usd != null) {
    return usd * 81;
  }
  return 0;
}

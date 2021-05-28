String addCommasToNumber(num? number) {
  String numberString = number.toString();

  return numberString.replaceAllMapped(
      new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
}

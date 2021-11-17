class CashData {
  int? id;
  DateTime? datetime;
  int? n100000;
  int? n75000;
  int? n50000;
  int? n20000;
  int? n10000;
  int? n5000;
  int? n2000;
  int? n1000;
  int? n500;
  int? n200;
  int? n100;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'datetime': datetime,
      'n100000': n100000,
      'n75000': n75000,
      'n50000': n50000,
      'n20000': n20000,
      'n10000': n10000,
      'n5000': n5000,
      'n2000': n2000,
      'n1000': n1000,
      'n500': n500,
      'n200': n200,
      'n100': n100,
    };
  }
}

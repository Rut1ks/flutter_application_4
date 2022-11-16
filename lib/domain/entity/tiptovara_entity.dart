class TipTovaraEntity {
  late int id;
  final String tip;

  TipTovaraEntity({required this.tip});
}

enum TipTovaraEnum {
  myaso(id: 1, tip: 'Мясо'),
  riba(id: 2, tip: 'Рыба');

  const TipTovaraEnum({
    required this.id,
    required this.tip,
  });

  final int id;
  final String tip;
}

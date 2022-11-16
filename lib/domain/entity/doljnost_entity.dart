class DoljnostEntity {
  late int id;
  final String naimenovanie;

  DoljnostEntity({required this.naimenovanie});
}

enum DoljnostEnum {
  prodavec(id: 1, naimenovanie: 'Продавец'),
  kladovshik(id: 2, naimenovanie: 'Кладовщик');

  const DoljnostEnum({required this.id, required this.naimenovanie});

  final int id;
  final String naimenovanie;
}

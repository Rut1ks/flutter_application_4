import 'package:flutter_application_4/domain/entity/postavshik_entity.dart';

import 'doljnost_entity.dart';

class SotrudnikEntity {
  late int id;
  final String familiya;
  final String imya;
  final String otchestvo;
  final DoljnostEnum id_doljnost;

  SotrudnikEntity({
    this.id = 0,
    required this.familiya,
    required this.imya,
    required this.otchestvo,
    required this.id_doljnost,
  });
}

enum SotrudnikEnum {
  sotrudnikProdavec1(
      id: 1,
      familiya: 'Смирнов',
      imya: 'Олег',
      otchestvo: 'Александрович',
      id_doljnost: 1),
  sotrudnikKladovshik1(
      id: 2,
      familiya: 'Иванов',
      imya: 'Иван',
      otchestvo: 'Иванович',
      id_doljnost: 2);

  const SotrudnikEnum({
    required this.id,
    required this.familiya,
    required this.imya,
    required this.otchestvo,
    required this.id_doljnost,
  });

  final int id;
  final String familiya;
  final String imya;
  final String otchestvo;
  final int id_doljnost;
}

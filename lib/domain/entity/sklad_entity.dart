import 'package:flutter_application_4/domain/entity/postavshik_entity.dart';

class SkladEntity {
  late int id;
  final String adres;
  final PostavshikEnum id_postavshiki;

  SkladEntity({
    this.id = 0,
    required this.adres,
    required this.id_postavshiki,
  });
}

enum SkladEnum {
  sklad1(id: 1, adres: 'Улица Пушкина дом 2', id_postavshiki: 1),
  sklad2(id: 2, adres: 'Ломоносовский проспект дом 5', id_postavshiki: 2);

  const SkladEnum({
    required this.id,
    required this.adres,
    required this.id_postavshiki,
  });

  final int id;
  final String adres;
  final int id_postavshiki;
}

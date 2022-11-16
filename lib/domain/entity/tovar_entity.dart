import 'package:flutter_application_4/domain/entity/sklad_entity.dart';
import 'package:flutter_application_4/domain/entity/tiptovara_entity.dart';

class TovarEntity {
  late int id;
  final String naimenovanie;
  final SkladEnum id_sklad;
  final TipTovaraEnum id_tiptovara;

  TovarEntity({
    this.id = 0,
    required this.naimenovanie,
    required this.id_sklad,
    required this.id_tiptovara,
  });
}

enum TovarEnum {
  govyadina(id: 1, naimenovanie: 'Говядина', id_sklad: 1, id_tiptovara: 1),
  semga(id: 2, naimenovanie: 'Сёмга', id_sklad: 2, id_tiptovara: 2);

  const TovarEnum({
    required this.id,
    required this.naimenovanie,
    required this.id_sklad,
    required this.id_tiptovara,
  });

  final int id;
  final String naimenovanie;
  final int id_sklad;
  final int id_tiptovara;
}

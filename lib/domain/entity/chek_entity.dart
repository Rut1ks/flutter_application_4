import 'package:flutter_application_4/domain/entity/sotrudnik_entity.dart';
import 'package:flutter_application_4/domain/entity/tovar_entity.dart';

class ChekEntity {
  late int id;
  final SotrudnikEnum id_sotrudnik;
  final TovarEnum id_tovar;

  ChekEntity({
    this.id = 0,
    required this.id_sotrudnik,
    required this.id_tovar,
  });
}

enum ChekEnum {
  chek1(id: 1, id_sotrudnik: 1, id_tovar: 1),
  chek2(id: 2, id_sotrudnik: 2, id_tovar: 2);

  const ChekEnum({
    required this.id,
    required this.id_sotrudnik,
    required this.id_tovar,
  });

  final int id;
  final int id_tovar;
  final int id_sotrudnik;
}

import 'dart:convert';

import '../../domain/entity/chek_entity.dart';
import '../../domain/entity/doljnost_entity.dart';
import '../../domain/entity/postavshik_entity.dart';
import '../../domain/entity/sotrudnik_entity.dart';
import '../../domain/entity/tovar_entity.dart';

class Chek extends ChekEntity {
  Chek({
    super.id = 0,
    required super.id_sotrudnik,
    required super.id_tovar,
  });

  Map<String, dynamic> toMap() {
    return {
      'id_sotrudnik': id_sotrudnik.id,
      'id_tovar': id_tovar.id,
    };
  }

  factory Chek.toFromMap(Map<String, dynamic> json) {
    return Chek(
      id: (json['id'] as int),
      id_sotrudnik: SotrudnikEnum.values
          .firstWhere((element) => element.id == (json['id_sotrudnik'] as int)),
      id_tovar: TovarEnum.values
          .firstWhere((element) => element.id == (json['id_tovar'] as int)),
    );
  }
}

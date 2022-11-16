import 'dart:convert';
import 'package:flutter_application_4/domain/entity/tiptovara_entity.dart';

import '../../domain/entity/sklad_entity.dart';
import '../../domain/entity/tovar_entity.dart';

class Tovar extends TovarEntity {
  Tovar({
    super.id = 0,
    required super.naimenovanie,
    required super.id_sklad,
    required super.id_tiptovara,
  });

  Map<String, dynamic> toMap() {
    return {
      'naimenovanie': naimenovanie,
      'id_sklad': id_sklad.id,
      'id_tiptovara': id_tiptovara.id,
    };
  }

  factory Tovar.toFromMap(Map<String, dynamic> json) {
    return Tovar(
      id: (json['id'] as int),
      naimenovanie: json['naimenovanie'],
      id_tiptovara: TipTovaraEnum.values
          .firstWhere((element) => element.id == (json['id_tiptovara'] as int)),
      id_sklad: SkladEnum.values.firstWhere(
        (element) => element.id == (json['id_sklad'] as int),
      ),
    );
  }
}

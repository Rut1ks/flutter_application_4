import 'dart:convert';

import '../../domain/entity/doljnost_entity.dart';
import '../../domain/entity/postavshik_entity.dart';
import '../../domain/entity/sotrudnik_entity.dart';

class Sotrudnik extends SotrudnikEntity {
  Sotrudnik({
    super.id = 0,
    required super.familiya,
    required super.imya,
    required super.otchestvo,
    required super.id_doljnost,
  });

  Map<String, dynamic> toMap() {
    return {
      'familiya': familiya,
      'imya': imya,
      'otchestvo': otchestvo,
      'id_doljnost': id_doljnost.id,
    };
  }

  factory Sotrudnik.toFromMap(Map<String, dynamic> json) {
    return Sotrudnik(
      id: (json['id'] as int),
      familiya: json['familiya'],
      imya: json['imya'],
      otchestvo: json['otchestvo'],
      id_doljnost: DoljnostEnum.values
          .firstWhere((element) => element.id == (json['id_doljnost'] as int)),
    );
  }
}

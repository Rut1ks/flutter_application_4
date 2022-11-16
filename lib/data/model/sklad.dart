import 'dart:convert';

import 'package:flutter_application_4/data/model/role.dart';
import 'package:flutter_application_4/domain/entity/role_entity.dart';
import 'package:flutter_application_4/domain/entity/user_entity.dart';

import '../../domain/entity/postavshik_entity.dart';
import '../../domain/entity/sklad_entity.dart';

class Sklad extends SkladEntity {
  Sklad({
    super.id = 0,
    required super.adres,
    required super.id_postavshiki,
  });

  Map<String, dynamic> toMap() {
    return {
      'adres': adres,
      'id_postavshiki': id_postavshiki.id,
    };
  }

  factory Sklad.toFromMap(Map<String, dynamic> json) {
    return Sklad(
      id: (json['id'] as int),
      adres: json['adres'],
      id_postavshiki: PostavshikEnum.values.firstWhere(
        (element) => element.id == (json['id_postavshiki'] as int),
      ),
    );
  }
}

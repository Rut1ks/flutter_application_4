import 'package:flutter_application_4/domain/entity/role_entity.dart';

import '../../domain/entity/doljnost_entity.dart';

class Doljnost extends DoljnostEntity {
  Doljnost({
    required super.naimenovanie,
  });

  Map<String, dynamic> toMap() {
    return {
      'naimenovanie': naimenovanie,
    };
  }

  factory Doljnost.toFromMap(Map<String, dynamic> json) {
    return Doljnost(naimenovanie: json['naimenovanie']);
  }
}

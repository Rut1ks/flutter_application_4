import 'package:flutter_application_4/domain/entity/role_entity.dart';

import '../../domain/entity/tiptovara_entity.dart';

class TipTovara extends TipTovaraEntity {
  TipTovara({
    required super.tip,
  });

  Map<String, dynamic> toMap() {
    return {
      'tip': tip,
    };
  }

  factory TipTovara.toFromMap(Map<String, dynamic> json) {
    return TipTovara(tip: json['tip']);
  }
}

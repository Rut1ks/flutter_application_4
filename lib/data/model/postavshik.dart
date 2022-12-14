import '../../domain/entity/postavshik_entity.dart';

class Postavshik extends PostavshikEntity {
  Postavshik({
    required super.naimenovanie,
  });

  Map<String, dynamic> toMap() {
    return {
      'naimenovanie': naimenovanie,
    };
  }

  factory Postavshik.toFromMap(Map<String, dynamic> json) {
    return Postavshik(naimenovanie: json['naimenovanie']);
  }
}

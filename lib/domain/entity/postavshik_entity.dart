class PostavshikEntity {
  late int id;
  final String naimenovanie;

  PostavshikEntity({required this.naimenovanie});
}

enum PostavshikEnum {
  krutoypostavshik(id: 1, naimenovanie: 'КрутойПоставщик'),
  ploxoypostavshik(id: 2, naimenovanie: 'ПлохойПоставщик');

  const PostavshikEnum({
    required this.id,
    required this.naimenovanie,
  });

  final int id;
  final String naimenovanie;
}

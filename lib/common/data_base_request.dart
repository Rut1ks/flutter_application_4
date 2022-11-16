abstract class DataBaseRequest {
  static const String tableRole = 'role';
  static const String tableUser = 'user';
  static const String tableSklad = 'sklad';
  static const String tablePostavshik = 'postavshik';
  static const String tableTovar = 'tovar';
  static const String tableChek = 'chek';
  static const String tableTipTovara = 'tiptovara';
  static const String tableSotrudnik = 'sotrudnik';
  static const String tableDoljnost = 'doljnost';

  static String deleteTable(String table) => 'DROP TABLE $table';

  static const List<String> tableList = [
    tableRole,
    tableUser,
    tableSklad,
    tablePostavshik,
    tableTovar,
    tableChek,
    tableTipTovara,
    tableSotrudnik,
    tableDoljnost
  ];

  static const List<String> tableCreateList = [
    _createTableRole,
    _createTableUsers,
    _createTableSklad,
    _createTablePostavshik,
    _createTableTovar,
    _createTableChek,
    _createTableTipTovara,
    _createTableSotrudnik,
    _createTableDoljnost
  ];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

  /// Запрос для создания таблицы Users
  static const String _createTableUsers =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL,"id_role"	INTEGER,FOREIGN KEY("id_role") REFERENCES "Role"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableSklad =
      'CREATE TABLE "$tableSklad" ("id" INTEGER,"adres" TEXT NOT NULL UNIQUE, id_postavshiki INTEGER,FOREIGN KEY("id_postavshiki") REFERENCES "postavshiki"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTablePostavshik =
      'CREATE TABLE "$tablePostavshik" ("id" INTEGER,"naimenovanie" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableTovar =
      'CREATE TABLE "$tableTovar" ("id" INTEGER,"naimenovanie" TEXT NOT NULL UNIQUE,id_tiptovara INTEGER, id_sklad INTEGER,FOREIGN KEY("id_tiptovara") REFERENCES "tiptovara"("id") ON DELETE CASCADE,FOREIGN KEY("id_sklad") REFERENCES "sklad"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableChek =
      'CREATE TABLE "$tableChek" ("id" INTEGER,id_sotrudnik INTEGER,id_tovar INTEGER,FOREIGN KEY("id_sotrudnik") REFERENCES "sotrudnik"("id") ON DELETE CASCADE,FOREIGN KEY("id_tovar") REFERENCES "tovar"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableTipTovara =
      'CREATE TABLE "$tableTipTovara" ("id" INTEGER,"tip" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableSotrudnik =
      'CREATE TABLE "$tableSotrudnik" ("id" INTEGER,"familiya" TEXT NOT NULL,"imya" TEXT NOT NULL,"otchestvo" TEXT NULL, id_doljnost INTEGER,FOREIGN KEY("id_doljnost") REFERENCES "doljnost"("id") ON DELETE CASCADE,PRIMARY KEY("id" AUTOINCREMENT))';

  static const String _createTableDoljnost =
      'CREATE TABLE "$tableDoljnost" ("id" INTEGER,"naimenovanie" TEXT NOT NULL UNIQUE,PRIMARY KEY("id" AUTOINCREMENT))';
}

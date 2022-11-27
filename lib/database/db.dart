// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class DB{
//   //construtor com acesso privado
//   DB._();
//   //instancia DB
//   static final DB instance = DB._();
//   //instancia do SQLite
//   static Database? _database;

//   get database async{
//     if(_database != null) return _database;
//     return await _initDatabase();    
//   }

//   _initDatabase() async{
//     return await openDatabase(
//       join(await getDatabasesPath(), 'telemedicina.db'),
//       version: 1,
//       onCreate: _onCreate,
//     );
//   }

//   _onCreate(db, versao) async{
//     await db.execute(_dados);
//     await db.execute(_historico);

//   }
//    String get _dados => '''
//   CREATE TABLE dados(
    
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       email STRING,
//       senha STRING
//   );

//   ''';

//   String get _historico => '''
//   CREATE TABLE historico(
    
//       id INTEGER PRIMARY KEY AUTOINCREMENT,
//       data INT,
//       email String,
//       senha STRING
//   );

//   ''';
// }
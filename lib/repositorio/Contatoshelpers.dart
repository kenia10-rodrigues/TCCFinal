// import 'dart:io';

// import 'package:flutter/cupertino.dart';
// import 'package:sqflite/sqflite.dart';

// class ContatosHelpers{

//   static ContatosHelpers _databasehelper; 
//   static Database _database;

//   ContatosHelpers._createInstance();
    
//     factory ContatosHelpers(){
//       if(_databasehelper == null){
//         _databasehelper = ContatosHelpers._createInstance();
//       }
//       return _databasehelper;
//     }

//   Future<Database> get database async{
//     if(_database == null){
//       _database = await inicializaBanco();
//     }
//     return _database;

//   }

//   Future <Database> inicializaBanco()async{
//     Directory directory  = await getApplicationDocumentDirectory();
//     String caminho = directory.path + 'bdcontatos.bd';

//     var bancodedados = await openDatabase(
//         caminho, version: 1, onCreate: _criarBanco);
//     return bancodedados;  
    
//   }



//  String nomeTabela = 'tabela_contatos';
//  String colId = 'id';
//  String colEmail = 'email';
//   String colsenha = 'senha';

//   //metodo que cria banco de dados

//   void _criarBanco(Database db, int versao) async{
//     await db.execute('CREATE TABLE $nomeTabela('

//     '$colId =   INTEGER PRIMARY KEY AUTOINCREMENT, '
//     '$colEmail Text, '
//      '$colsenha Text)'
//     );
//   }


// }
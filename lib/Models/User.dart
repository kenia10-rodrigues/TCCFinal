// import 'package:flutter/material.dart';

// class User{
//   int _id;
//   String _email;
//   String _senha;


// //construtor
//  User(
//     this._id,
//     this._email,
//     this._senha,
//    // @required this.avatarUrl,
//   );


// //gett e setters
//   get getId => _id;

//  set setId(final id) => _id = id;

//   get getEmail => _email;

//  set setEmail( email) => _email = email;

//   get getSenha => this._senha;

//  set setSenha( senha) => _senha = senha;

//  //metodo para converter de model para map
// Map<String, dynamic> toMap(){
//     var dados = Map<String, dynamic>();
//     dados['id'] = _id;
//     dados['email'] = _email;
//     dados['senha'] = _senha;

//     return dados;
// }
//  //metodo que converte de map para model
//     User.deMapParaModel(Map<String, dynamic> dados){
//   this._id = dados['id'];
//   this._email=dados['email'];
//   this._senha = dados['senha'];

// }
// }

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import '../Models/user.dart';
// import '../data/dummy_users.dart';
// //import 'package: http/http.dart'as http;

// class Users with ChangeNotifier {
//   static const _baseUrl = 'https://netsaude-85db9-default-rtdb.firebaseio.com/';
//   final Map<String, User> _items = {...DUMMY_USERS};

//   List<User> get all {
//     return [..._items.values];
//   }

//   int get count {
//     return _items.length;
//   } 

//   User byIndex(int i) {
//     return _items.values.elementAt(i);
//   }

//   Future<void> put(User user) async{
//     if (user == null) {
//       return;
//     }

//     if (user.id != null &&
//         user.id.trim().isNotEmpty &&
//         _items.containsKey(user.id)) {
//       _items.update(
//         user.id,
//         (_) => User(
//           id: user.id,
//           email: user.email,
//           senha: user.senha,
//           //avatarUrl: user.avatarUrl,
//         ),
//       );
//     } else {
//       final response = await http.post(
//         "$_baseUrl/users.json",
//          body: json.encode({
//           'email': user.email,
//           'name': user.senha,
//           //'avatarUrl': user.avatarUrl,
//       }),
//       );

//       final id = json.decode(response.body)['name'];
//       print(json.decode(response.body));
//       _items.putIfAbsent(
//         id,
//         () => User(
//           id: id,
//           email: user.email,
//           senha: user.senha,
//           //avatarUrl: user.avatarUrl,
//         ),
//       );
//     }
//     notifyListeners();
//   }

//   void remove(User user) {
//     if(user != null && user.id != null) {
//       _items.remove(user.id);
//       notifyListeners();
//     }
//   }
// }
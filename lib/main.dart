import 'package:flutter/material.dart';
import 'package:signup_page/especialidade.dart';
import 'package:signup_page/listaDeMedicos.dart';
import 'package:signup_page/login.dart';
import 'package:signup_page/register.dart';
import 'package:signup_page/index.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'register',
        routes: {
          'register': (context) => const MyRegister(),
          'login': (context) => const MyLogin(),
          'especialidade': (context) => const MyApp(),
          'lista':(context) => const MyListaMedicos(),
          //'chamada':(context) => MyAppCall(),
         // 'call':(context) => const MyAppCall(),
        }),
  );
}

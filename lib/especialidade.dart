//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:signup_page/listaDeMedicos.dart';
import 'package:signup_page/listaDermatologistas.dart';
import 'package:signup_page/listaGinecologistas.dart';
import 'package:signup_page/listaMastologista.dart';
import 'package:signup_page/listaPsicologia.dart';
import 'package:signup_page/login.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({key});
  

  static const String _title = 'Escolha a Especialidade';
  
  static const String _texto = 'NetSaúde';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
             
        home: Scaffold(
          
        appBar: AppBar(title: const Text(_title), centerTitle: true,  backgroundColor: Colors.teal[400]),
        body: const MyStatefulWidget(
                   
         
                //  Navigator.pop(context, MyLogin());
        ),
   
        

      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  get style => null;

  @override
  Widget build(BuildContext context) {
   
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    width: MediaQuery.of(context).size.width;
   
    return Center(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.max,
        children: <Widget>[

            ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[400]
            ),
            onPressed: (){
               Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyListaPsicologo()),
              );
            
            },
            child: const Text('Psicologia',
            style: TextStyle(fontSize: 22),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 30),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[400]
            ),
            onPressed: (){
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyListaMedicos()),//cardiologia
              );
            
            },
            child: const Text('Cardiologia',
            style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 30),


           ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[400]
            ),
            onPressed: (){
               Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyListaDermatologista()),
              );
            
            },
            child: const Text('Dermatologia',
            style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 30),

                 
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[400]
            ),
            onPressed: (){
               Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyListaGinecologista()),
              );
            
            },
            
            child: const Text('Ginecologia',
            style: TextStyle(fontSize: 19),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 30),

            ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[400]
            ),
            onPressed: (){
               Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => MyListaMastologista()),
              );
            
            },
            
            child: const Text('Mastologia',
            style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(width: 30),
        
        ],
   ),

    );
  }
}
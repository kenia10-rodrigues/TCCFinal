import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyListaMedicos extends StatefulWidget {
  const MyListaMedicos({Key? key}) : super(key: key);

  @override
  _MyListaMedicosState createState() => _MyListaMedicosState();
}

class _MyListaMedicosState extends State<MyListaMedicos> {

  static const String _title = 'Cardiologia';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), centerTitle: true,
        backgroundColor: Colors.teal[400],
         automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios_new),
          onPressed:() => Navigator.pop(context, false),
        
          ),    
        ),
        body: const MyStatelessWidget(
          
        ),
        
      ), 
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({key});

  
  @override
  Widget build(BuildContext context) {
        
    return Center(
     
      child: Card(
              child: Padding(
              padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
              const ListTile(
              leading: Icon(Icons.album),
              title: Text('Cardiologista'),
              subtitle: Text('Maria Paula\nCRM:174258\n Estacao Saude\n R Pamplona, 72 - Jardim Paulista - SP'),
              
              ),
                                            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('LIGAR'),
                  onPressed: () {
                    launchUrl(Uri(scheme: 'tel', path: '1199594101'));
                   },
                ),
                const SizedBox(width: 5),

                  TextButton(
                  child: const Text('VER DETALHES'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 5),
                            
              ],
            ),



              const ListTile(
              leading: Icon(Icons.album),
              title: Text('\n\nCardiologista'),
              subtitle: Text('Karina Mendes\nCRM:132158\n Barueri\nAv Joana D Arc, 100 - Barueri - SP'),

              ),
                                    
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('LIGAR'),
                  onPressed: () {
                    launchUrl(Uri(scheme: 'tel', path: '119954411'));
                   },
                ),
                const SizedBox(width: 5),
                TextButton(
                  child: const Text('VER DETALHES'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 5),
              ],
            ),
          

            const ListTile(
              leading: Icon(Icons.album),
              title: Text('\n\nCardiologista'),
              subtitle: Text('Alessandra Gomes\nCRM:274253\n Osasco\n R Pedro Camargo,  205 - Osasco - SP'),
              ),
                                     
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('LIGAR'),
                  onPressed: () {
                    launchUrl(Uri(scheme: 'tel', path: '1199854101'));
                   },
                ),
                const SizedBox(width: 5),
                TextButton(
                  child: const Text('VER DETALHES'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 5),
              ],
            ),
          
          ],
          
        ),
      ),
     
      ),
     
    );
    }
  }


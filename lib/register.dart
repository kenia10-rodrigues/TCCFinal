import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'Models/user.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final _formKey = GlobalKey<FormState>();
  static const String _title = 'NetSaúde';
   final _formData= GlobalKey<FormState>();
  // static const String _email = '';
  // static const String _senha = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/flor-de-lotus.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[400],
          elevation: 0,
        ),
        backgroundColor: Colors.teal[400],
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 70, top: 80),
            child: const Text(
              "Cadastro usuário",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
              
                  top: MediaQuery.of(context).size.height * 0.37),
              child: Column(children: [
                
                TextField(
                  decoration: InputDecoration(
                    //focusedBorder: OutlineInputBorder(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                      
                    ),
                    hintText: 'E-mail',
                    hintStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
                  
                  
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintText: 'Senha',
                    hintStyle: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                                                    
                        ),
                      ),
                      CircleAvatar(
                        radius: 32,
                        backgroundColor: Color.fromARGB(255, 159, 204, 193),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () async {
//   final isValid = _form.currentState.validate();
//   //                    if(isValid){
// //_form.currentState.save();

// await Provider.of<Users>(context, listen: false).put(
// User(
// id: _formData['id'],
// email: _formData['email'],
// senha: _formData['senha'],
// ),
                          
// );
                          Navigator.of(context).pop();

                            },
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

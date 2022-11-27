import 'package:flutter/material.dart';
import 'package:signup_page/especialidade.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
    final _emailController = TextEditingController();
    final _senhaController = TextEditingController();
    //'kenia@hotmai.com';
  // String password = '123';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/equipe-medica.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.teal[400],
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 110, top: 50),
            child: const Text(
              "\nNetSaúde",
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.45),
                  child: Form(
                    key: _formKey,
              child: Column(children: [
                TextFormField(
                  controller: _emailController,
                    decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (email){
                    if(email == null || email.isEmpty){
                      return ('Digite seu e-mail');
                    }
                    if(email== 'kenia@hotmail.com')
                       return null;
                   return 'Email inválido';

                  }
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _senhaController,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (senha){
                    if(senha == null || senha.isEmpty){
                      return ('Digite sua senha');
                    }else if(senha.length <6){
                      return 'Digite uma senha com no mínimo 6 caracteres';
                    }
                    if(senha == '123456')
                        return null;
                   return 'Senha inválida';
                  //  return null;
                  }
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 223, 224, 230),
                      child: IconButton(
                        color: Colors.teal[400],
                        onPressed: () {
                          if (_formKey.currentState!.validate()){
                              Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const MyApp()),
                           );

                          }
                          // if (_emailController == 'kenia@hotmail.com' &&
                          //      _senhaController == '123456'){
                          //     Navigator.of(context).push(
                          //     MaterialPageRoute(builder: (context) => const MyApp()),
                          //  );
                            // } else {
                            //    print('Login Inválido');
                            // }
                               },                        
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text(
                          'Sair',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: const Text(
                      //     'Esqueci a senha',
                      //     style: TextStyle(
                      //       decoration: TextDecoration.underline,
                      //       fontSize: 18,
                      //       color: Colors.white,
                      //     ),
                      //   ),
                      // ),
                    ]),
              ]),
            ),
          ),
          ),
        ]),
      ),
    );
  }
}

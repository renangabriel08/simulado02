import 'package:flutter/material.dart';
import 'package:simulado2/controllers/api.dart';
import 'package:simulado2/controllers/validator.dart';
import 'package:simulado2/styles/cores.dart';
import 'package:simulado2/styles/fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  String? email;
  String? senha;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: SizedBox(
            width: width,
            height: height,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png', height: 200),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => Validator.validarDados(email!),
                    onChanged: (value) => email = value,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'email@email.com',
                    ),
                  ),
                  SizedBox(height: height * .02),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    validator: (value) => Validator.validarDados(senha!),
                    onChanged: (value) => senha = value,
                    decoration: const InputDecoration(
                      hintText: '********',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: height * .05),
                  email != null && senha != null && email != '' && senha != ''
                      ? ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Api.logar(email!, senha!, context);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Cores.verdeEscuro,
                            fixedSize: Size(width, 50),
                          ),
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: Fonte.fonte,
                            ),
                          ),
                        )
                      : ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            fixedSize: Size(width, 50),
                          ),
                          child: Text(
                            'Entrar',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: Fonte.fonte,
                            ),
                          ),
                        ),
                  SizedBox(height: height * .02),
                  OutlinedButton(
                    onPressed: () => Navigator.pushNamed(context, '/cadastro'),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Cores.verdeEscuro, width: 2),
                      fixedSize: Size(width, 50),
                    ),
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: Fonte.fonte,
                        color: Cores.verdeEscuro,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

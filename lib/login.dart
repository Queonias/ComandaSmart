import 'package:comanda_smart/auth_service.dart';
import 'package:comanda_smart/cadastro.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GoogleAuthentication _googleAuth = GoogleAuthentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffffffff)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Image.asset("imagens/logo.png", height: 180),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: TextField(
                      // controller: _controllerEmail,
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                        hintText: "E-mail",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  const TextField(
                    // controller: _controllerSenha,
                    obscureText: true,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "Senha",
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? valor) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      const SizedBox(
                          width:
                              8), // Adiciona um espaço entre o Checkbox e o texto
                      Expanded(
                        child: GestureDetector(
                          child: const Text(
                            "Lembrar senha",
                            style: TextStyle(
                              color: Color(0xff83552A),
                              fontSize: 12,
                            ),
                          ),
                          onTap: () {
                            // Implemente a funcionalidade de lembrar a senha aqui
                          },
                        ),
                      ),
                      GestureDetector(
                        child: const Text(
                          "Esqueceu a senha?",
                          style: TextStyle(
                            color: Color(0xff83552A),
                            fontSize: 12,
                          ),
                        ),
                        onTap: () {
                          // Implemente a funcionalidade de recuperar a senha aqui
                        },
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        // _validarCampos();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff83552A),
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const Text(
                    "Ou faça login com",
                    style: TextStyle(color: Color(0xff83552A), fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 25, 16, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              // AuthService().signInWithGoogle()
                            },
                            icon: Image.asset("imagens/facebook-logo.png",
                                height: 40)),
                        IconButton(
                          onPressed: () {
                            // AuthService().signInWithGoogle()
                          },
                          icon: Image.asset("imagens/instagram-logo.png",
                              height: 40),
                        ),
                        IconButton(
                          onPressed: () async {
                            User? user = await _googleAuth.signInWithGoogle();
                            if (user != null) {
                              print(
                                  'Usuário autenticado com sucesso: ${user.displayName}');
                            } else {
                              print('Erro ao autenticar o usuário.');
                            }
                          },
                          icon: Image.asset("imagens/google-logo.png",
                              height: 40),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Não tem conta? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Cadastro(),
                              ),
                            );
                          },
                          child: const Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Color(0xff83552A),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

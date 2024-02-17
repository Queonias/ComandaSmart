import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final TextEditingController _controllerNomeCompleto = TextEditingController();
  final TextEditingController _controllerNomeUsuario = TextEditingController();
  final TextEditingController _controllerNomeEstabelecimento =
      TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerSenha = TextEditingController();
  final TextEditingController _controllerSenhaComfirma =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Color(0xff83552A)),
          title: const Text("Crie sua conta",
              style: TextStyle(color: Color(0xff83552A))),
        ),
        body: Container(
            decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerNomeCompleto,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Nome completo:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerNomeUsuario,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Nome de usuário:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerNomeEstabelecimento,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Nome do Estabelecimento:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerEmail,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "E-mail:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerSenha,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Senha:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          controller: _controllerSenhaComfirma,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(fontSize: 20),
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(32, 16, 32, 16),
                            hintText: "Comfirmar Senha:",
                            hintStyle: const TextStyle(fontSize: 15),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32, bottom: 16),
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
                            "CADASTRAR",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      const Text(
                        "Ou faça login com",
                        style:
                            TextStyle(color: Color(0xff83552A), fontSize: 20),
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
                                // AuthService().signInWithGoogle()
                              },
                              icon: Image.asset("imagens/google-logo.png",
                                  height: 40),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 32),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Já possui conta? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color(0xff83552A),
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

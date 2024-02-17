import 'package:comanda_smart/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future _verificarUsuarioLogado() async {
    // Verifica se o usuário está logado
    FirebaseAuth auth = FirebaseAuth.instance;
    User? usuarioLogado = auth.currentUser;

    if (usuarioLogado != null) {
      setState(() {});
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));
    }
  }

  Future _logout() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    await auth.signOut();
  }

  @override
  void initState() {
    super.initState();
    _verificarUsuarioLogado();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comanda Plus'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Bem-vindo ao Comanda Plus!',
            style: TextStyle(fontSize: 24),
          ),
          TextButton(
              onPressed: () {
                _logout();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
              child: const Text(
                "Sair",
                style: TextStyle(fontSize: 24),
              ))
        ],
      )),
    );
  }
}

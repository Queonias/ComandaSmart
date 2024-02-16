import 'package:comanda_smart/home.dart';
import 'package:comanda_smart/login.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final FirebaseAuth auth = FirebaseAuth.instance;
  final User? usuarioLogado = auth.currentUser;
  Widget initialWidget;

  if (usuarioLogado != null) {
    initialWidget =
        const Home(); // Redireciona para a tela Home se o usuário estiver logado
  } else {
    initialWidget =
        const Login(); // Exibe a tela de login se o usuário não estiver logado
  }
  runApp(MyApp(initialWidget: initialWidget));
}

class MyApp extends StatelessWidget {
  final Widget initialWidget;
  const MyApp({Key? key, required this.initialWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Comanda Plus',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff83552A)),
        useMaterial3: true,
      ),
      home: initialWidget,
    );
  }
}

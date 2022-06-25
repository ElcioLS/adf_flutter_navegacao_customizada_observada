import 'package:flutter/material.dart';

import 'pages/detalhe_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      //o OnGenerateRoute não é chamado quando a rota dele está ativada pelo routes
      // e tambem quando for feita por Page 'PushNamed' rota nomeada
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }
        if (settings.name == '/detalhe') {
          // String parametro = settings.arguments as String? ?? 'Não foi enviado o parâmetro';
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(
              parametro: parametro ?? 'Não foi enviado o parâmetro',
            ),
          );
        }
        return null;
      },

      // routes: {
      //   '/': (_) => const HomePage(),
      //   '/detalhe': (_) => const DetalhePage(),
      // },
    );
  }
}

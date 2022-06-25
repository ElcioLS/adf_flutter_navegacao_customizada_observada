import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  final String parametro;

  const DetalhePage({Key? key, required this.parametro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// var parametro = ModalRoute.of(context)?.settings.arguments as String?; //usado no modelo abaixo
// Para Não ter que fazer o "ModalRoute".
//Na Navegação Customizada conseguimos pegar do Settings o Argumento que esperamos e mandar via contrutor

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
      ),
      body: Center(
        child: Text(parametro),
      ),
    );
  }
}


//
// Outra forma de passar parametro
//
// import 'package:flutter/material.dart';

// class DetalhePage extends StatelessWidget {
//   const DetalhePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var parametro = ModalRoute.of(context)?.settings.arguments as String?;
//   // var parametro = ModalRoute.of(context)?.settings.arguments as String?; //usado no modelo abaixo
//   // Para Não ter que fazer o "ModalRoute".
//   // Na Navegação Customizada conseguimos pegar do Settings o Argumento que esperamos e mandar via contrutor

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Detalhe'),
//       ),
//       body: Center(
//         child: Text(parametro ?? 'Não foi enviado o parâmetro'),
//       ),
//     );
//   }
// }

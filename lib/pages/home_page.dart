import 'package:adf_flutter_navegacao_customizada_observada/pages/detalhe_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: const Text('Ir para Detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    settings: const RouteSettings(
                      name: '/detalhe',
                      // arguments: 'Parametro pelo PageRoute',
                    ),
                    builder: ((_) => const DetalhePage(
                          parametro: 'Parametro pelo PageRoute',
                        )),
                  ),
                );
              },
              child: const Text('Ir para Detalhe PageRoute'),
            ),
            TextButton(
              onPressed: () async {
                print('Antes de navegar para a Detalhe2');
                final retorno =
                    await Navigator.of(context).pushNamed('/detalhe2');
                print('Após navegar para a Detalhe2');
                print('O retorno de detalhe 2 é $retorno');
              },
              child: const Text('Ir para Detalhe2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}

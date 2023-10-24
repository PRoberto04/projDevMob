import 'package:flutter/material.dart';
import 'login_page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Fit Plan',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.italic,
            ),
          ),
          Image.asset(
            './assets/images/haltere-icon.png',
            alignment: Alignment.topCenter,
            height: 126,
            width: 281,
          ),
          const Text(
            'Cadastro',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500, // Peso da fonte
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Jonathan Joestar',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'exemplo@gmail.com',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'exemplosenha123',
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 60.0),
            child: SizedBox(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Adicione a lógica de autenticação aqui
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage()),
                      );
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
            child: const Text('Já tem uma conta? Clique aqui'),
          )
        ],
      )),
    );
  }
}

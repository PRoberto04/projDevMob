import 'package:fit_plain/views/cadastro_page.dart';
import 'package:fit_plain/views/home_page.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'Fit Plan',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),

            Image.asset(
              './assets/images/haltere-icon.png',
              alignment: Alignment.topCenter,
              height: 200,
              width: 280,

            ),

            // Cabeçalho "Faça Login"
            const Text(
              'Login', 
              style: TextStyle(
                fontSize: 50, // Tamanho do texto
                fontWeight: FontWeight.w500, // Peso da fonte
                fontStyle: FontStyle.italic,  
              ),
            ),

            const Text(
              'Olá, seja Bem Vindo(a)',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),

            const SizedBox(height: 10,),

            const Padding( 
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0), //Define o espaçamento horizontal, para afastar os fields da borda
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'exemplol@gmail.com',
                      ),
                  ),

                  SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(    
                      labelText: 'exemplosenha123', 
                    ),
                    obscureText: true,
                  ),
                ]
              )
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Botão que redireciona para a Home do aplicativo
                        ElevatedButton(
                          onPressed: () {
                            // Lógica de autenticação
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => const HomePage()),
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

                        const SizedBox(height: 10,),
                      ]
                    ),
            ),

            InkWell(
              onTap: (){
                Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => const CadastroPage()),
                            );
              }, 
              child: const Text(
                'Não tem uma conta? Clique aqui'
              ),
              )
          ],
        ),
      ),
    );    
  }
}
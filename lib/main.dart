import 'package:fit_plain/transition_route_observer.dart';
import 'package:fit_plain/views/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(30, 30, 30, 1), // Cor primária
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        secondaryHeaderColor: const Color.fromARGB(
            255, 255, 255, 255), // Segunda cor do cabeçalho

        //Estilo padrão para os botões
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(
                  30, 30, 30, 1)), // Cor de fundo dos botões
              foregroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 255, 255, 255)),
              padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 10, horizontal: 50)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22))),
              minimumSize: const MaterialStatePropertyAll(Size(270, 43))),
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Colors.black), // Define a cor do texto padrão como preto
          bodyMedium: TextStyle(color: Colors.black), // Outro estilo de texto
          // Você pode definir outros estilos de texto conforme necessário
        ),

        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 0.500),
            fontWeight: FontWeight.w800, //Muda o peso da fonte
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
        ),
      ),

      //Navegação
      navigatorObservers: [TransitionRouteObserver()],
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (context) => const LoginPage(),
      },
    );
  }
}

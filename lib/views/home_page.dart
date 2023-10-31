import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            const Stack(
              alignment: Alignment.centerLeft,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 30, 30, 1),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 80,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 30),
                    ),

                    Spacer(), //Preenche todo o espaço vazio entre os elementos

                    Icon(
                      Icons.account_circle_outlined,
                      size: 50,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 255, 255, 255)),
                        iconColor: MaterialStateProperty.all(Colors.black54),
                        shape: MaterialStateProperty.all( RoundedRectangleBorder( borderRadius: BorderRadius.circular(3))),
                        side: MaterialStateProperty.all( const BorderSide( color: Color.fromRGBO(0, 0, 0, 1)))
                      ),
                      label: const Text(
                        "Monte sua ficha",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      icon: const Icon(Icons.arrow_forward_outlined),
                    ),
                  )
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric( horizontal: 8),

              child: Column(
                children: [
                  
                  Divider(
                    color: Colors.black,
                    thickness: 2,
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14),
                      child: Text(
                        'Divisão semanal',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      )
                    ),
                  )

                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

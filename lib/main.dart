import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  void decrement() {
    // ignore: avoid_print
    print('decrement');
  }

  void increment() {
    // ignore: avoid_print
    print('increment');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        // ignore: avoid_unnecessary_containers
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/imagens/sorvete.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pode Entrar',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(40),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: const Text(
                      'Saiu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32),
                  TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(100, 100),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ), //Style
                    child: const Text(
                      'Entrou',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
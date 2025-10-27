import 'package:contador_pontos_truco/placar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int pontosNos = 0, pontosEles = 0;
  int partidasNos = 0, partidasEles = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contador Truco",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 18, 40),
        appBar: AppBar(
          centerTitle: true,
          actionsPadding: EdgeInsets.only(right: 25.0),
          title: Text(
            "Contador Truco ♠️".toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 4,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 135, 202),
          actions: [
            IconButton(
              onPressed: novoJogo,
              icon: Icon(Icons.refresh),
              color: Colors.white,
              iconSize: 30,
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Placar(
                pontosNos,
                partidasNos,
                "Time 1",
                somaPontosNos,
                subtraiPontosNos,
                zerarNos,
              ),
              Placar(
                pontosEles,
                partidasEles,
                "Time 2",
                somaPontosEles,
                subtraiPontosEles,
                zerarEles,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void somaPontosNos() {
    setState(() {
      pontosNos++;
      if (pontosNos >= 12) {
        partidasNos++;
        pontosNos = 0;
        pontosEles = 0;
      }
    });
  }

  void subtraiPontosNos() {
    setState(() {
      pontosNos--;
      if (pontosNos < 0) {
        pontosNos = 0;
      }
    });
  }

  void zerarNos() {
    setState(() {
      pontosNos = 0;
    });
  }

  void somaPontosEles() {
    setState(() {
      pontosEles++;
      if (pontosEles >= 12) {
        partidasEles++;
        pontosEles = 0;
        pontosNos = 0;
      }
    });
  }

  void subtraiPontosEles() {
    setState(() {
      pontosEles--;
      if (pontosEles < 0) {
        pontosEles = 0;
      }
    });
  }

  void zerarEles() {
    setState(() {
      pontosEles = 0;
    });
  }

  void novoJogo() {
    setState(() {
      pontosNos = 0;
      pontosEles = 0;
      partidasNos = 0;
      partidasEles = 0;
    });
  }
}

import 'package:flutter/material.dart';

class Placar extends StatelessWidget {
  int pontos;
  int partidas;
  String time;

  void Function() somaPontos, subtraiPontos, zerar;

  Placar(
    this.pontos,
    this.partidas,
    this.time,
    this.somaPontos,
    this.subtraiPontos,
    this.zerar,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$time', style: TextStyle(color: Colors.white, fontSize: 24)),
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: somaPontos,
                    child: Text(
                      '+1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    backgroundColor: const Color.fromARGB(255, 23, 132, 220),
                  ),
                  FloatingActionButton(
                    onPressed: subtraiPontos,
                    child: Text(
                      '-1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    backgroundColor: const Color.fromARGB(255, 15, 94, 158),
                  ),
                  FloatingActionButton(
                    onPressed: zerar,
                    child: Text(
                      'Zerar',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    backgroundColor: const Color.fromARGB(255, 9, 61, 104),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pontos: $pontos',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'Partidas: $partidas',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

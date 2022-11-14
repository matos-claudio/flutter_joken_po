import 'package:flutter/material.dart';

const imgPedra = "images/pedra.png";
const imgPapel = "images/papel.png";
const imgTesoura = "images/tesoura.png";
const double tamanhoImagem = 100;

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "JokenPo",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("Esolha do App:"),
            Image.asset(
              imgPedra,
              width: tamanhoImagem,
            ),
            const Text("Resultado", strutStyle: StrutStyle()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  imgPedra,
                  width: tamanhoImagem,
                ),
                Image.asset(
                  imgPapel,
                  width: tamanhoImagem,
                ),
                Image.asset(
                  imgTesoura,
                  width: tamanhoImagem,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

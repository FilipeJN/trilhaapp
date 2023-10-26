import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:trilhaapp/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeDeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meu App",
          style: GoogleFonts.roboto(),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              //width: double.infinity,
              color: Colors.yellow,
              child: Text(
                "Ações do usuário",
                style: GoogleFonts.acme(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.cyan,
                child: Text(
                  "Foi clicado $quantidadeDeCliques vezes",
                  style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.orange,
              child: (Text(
                "O nùmero gerado foi: $numeroGerado",
                style: GoogleFonts.acme(fontSize: 20),
              )),
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.purple,
                          child: (Text(
                            "Nome:",
                            style: GoogleFonts.acme(fontSize: 20),
                          )),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                            color: Colors.lightGreen,
                            child: Text(
                              "Filipe Nascimento",
                              style: GoogleFonts.acme(fontSize: 20),
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            color: Colors.red,
                            child: Text(
                              "30",
                              style: GoogleFonts.acme(fontSize: 20),
                            )),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            quantidadeDeCliques = quantidadeDeCliques + 1;
            numeroGerado =
                GeradorNumeroAleatorioService.gerarNumeroAleatorio(100);
          });
        },
      ),
    );
  }
}

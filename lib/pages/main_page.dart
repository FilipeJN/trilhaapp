import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/dados_cadastrais.dart';
import 'package:trilhaapp/pages/pagina1.dart';
import 'package:trilhaapp/pages/pagina2.dart';
import 'package:trilhaapp/pages/pagina3.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Main Page"),
          ),
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        child: Text("Dados cadastrais")),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DadosCadastraisPage(
                                    texto: "Meus Dados",
                                    dados: ["Nome", "Endereço"],
                                  )));
                    },
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        child: Text("Termos de uso e privacidade")),
                    onTap: () {},
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        child: Text("Configurações")),
                    onTap: () {},
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: PageView(
                  children: const [
                    Pagina1Page(),
                    Pagina2Page(),
                    Pagina3Page(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

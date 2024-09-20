import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class TelaEdificio extends StatefulWidget {
  const TelaEdificio({super.key});

  @override
  _TelaEdificioState createState() => _TelaEdificioState();
}

class _TelaEdificioState extends State<TelaEdificio> {
  Map<String, int> _ratings = {}; // Armazena as classificações dos edifícios

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edifícios Famosos'),
        backgroundColor: const Color.fromARGB(255, 6, 186, 231),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // altura do cabeçalho
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/edificios_sp.jpg'), // imagem do fundo da tela
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBuildingContainer(
                    imageUrl: 'assets/copan_sp.jpg',
                    name: 'Edificio COPAN',
                    address: 'Endereço: Av Ipiranga, 200.',
                    description: 'Descrição: O Edifício Copan, projetado por Oscar Niemeyer e concluído em 1966, é um marco arquitetônico de São Paulo com sua forma ondulada icônica. Com 115 metros de altura e 32 andares, abriga mais de 1.160 apartamentos e uma área comercial. É um símbolo da modernidade brasileira, conhecido por sua diversidade social e vibrante comunidade, além de ser uma atração turística e um legado duradouro da arquitetura moderna.',
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://maps.app.goo.gl/EXfQvrhN5sHheaaG9';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, // Aumentando a altura
                          horizontal: 30.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 23.0, // Tamanho da fonte
                        ),
                      ),
                      child: const Text('Localização'),
                    ),
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/italia_sp.jpg',
                    name: 'Edificio Italia',
                    address: 'Endereço: Av Ipiranga, 344.',
                    description: 'Descrição: O Edifício Itália, localizado na Av. Ipiranga, 344, em São Paulo, é um dos arranha-céus mais emblemáticos da cidade. Inaugurado em 1965, tem 165 metros de altura e 46 andares. Conhecido por seu mirante com vistas panorâmicas e o famoso Terraço Itália, é um símbolo do modernismo paulistano e um importante ponto turístico.',
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://maps.app.goo.gl/zg78AYnfcktyyHnV7';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, // Aumentando a altura
                          horizontal: 30.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 23.0, // Tamanho da fonte
                        ),
                      ),
                      child: const Text('Localização'),
                    ),
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/teatro_sp.jpg',
                    name: 'Teatro municipal de São Paulo',
                    address: 'Endereço: Praça Ramos de Azevedo, s/n - República, São Paulo - SP, 01037-010.',
                    description: 'Descrição: O Teatro Municipal de São Paulo, situado na Praça Ramos de Azevedo, é uma joia arquitetônica inaugurada em 1911. Com influências da Belle Époque e do Renascimento, é um ícone da cultura e das artes na cidade. Apresenta uma rica programação de óperas, balés e concertos. Seu interior suntuoso e sua fachada imponente o tornam uma atração turística imperdível e um centro vital da vida cultural paulistana.',
                  ),Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://maps.app.goo.gl/45CnAtiaxSs36cJZ6';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, // Aumentando a altura
                          horizontal: 30.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 23.0, // Tamanho da fonte
                        ),
                      ),
                      child: const Text('Localização'),
                    ),
                  ),
                  _buildBuildingContainer(
                    imageUrl: 'assets/sesc_sp.jpg',
                    name: 'Sesc Pompéia',
                    address: 'Endereço: R. Clélia, 93 - Água Branca, São Paulo - SP, 05042-000.',
                    description: 'Descrição: O SESC Pompeia, localizado no bairro de Pompeia em São Paulo, é uma referência em cultura, lazer e educação. Projetado por Lina Bo Bardi e inaugurado em 1986, o espaço cultural ocupa uma antiga fábrica de tambores. Com uma arquitetura industrial única, oferece uma ampla gama de atividades, incluindo shows, exposições, workshops e espaços esportivos. É um centro vibrante de encontro e diversidade, contribuindo significativamente para a vida cultural e comunitária da cidade.',
                  ),Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://maps.app.goo.gl/zZScnjr53LbzErxr7';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor de fundo
                        foregroundColor: Colors.white, // Cor do texto
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0, // Aumentando a altura
                          horizontal: 30.0,
                        ),
                        textStyle: const TextStyle(
                          fontSize: 23.0, // Tamanho da fonte
                        ),
                      ),
                      child: const Text('Localização'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBuildingContainer({
    required String imageUrl,
    required String name,
    required String address,
    required String description,
  }) {
    return Container(
      width: double.infinity, // serve para o container pegar a largura total da tela
      margin: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            height: 200, // define altura da imagem
            width: double.infinity, // também pega a largura total, só que é a imagem
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  address,
                  style: const TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: _ratings.containsKey(name) && _ratings[name]! >= 1
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _ratings[name] = 1;
                  });
                },
              ),
              IconButton(
                icon: _ratings.containsKey(name) && _ratings[name]! >= 2
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _ratings[name] = 2;
                  });
                },
              ),
              IconButton(
                icon: _ratings.containsKey(name) && _ratings[name]! >= 3
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _ratings[name] = 3;
                  });
                },
              ),
              IconButton(
                icon: _ratings.containsKey(name) && _ratings[name]! >= 4
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _ratings[name] = 4;
                  });
                },
              ),
              IconButton(
                icon: _ratings.containsKey(name) && _ratings[name]! >= 5
                    ? Icon(Icons.star, color: Colors.amber)
                    : Icon(Icons.star_border),
                onPressed: () {
                  setState(() {
                    _ratings[name] = 5;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

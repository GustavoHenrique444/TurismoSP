import 'package:flutter/material.dart';

class TelaMuseu extends StatefulWidget {
  const TelaMuseu({Key? key}) : super(key: key);

  @override
  _TelaMuseuState createState() => _TelaMuseuState();
}

class _TelaMuseuState extends State<TelaMuseu> {
  Map<String, int> _ratings = {}; // Armazena as classificações dos museus

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Museus'),
        backgroundColor: const Color.fromARGB(255, 231, 179, 6),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // altura do cabeçalho
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/museus_sp.jpg'), // imagem do fundo da tela
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
                  _buildMuseumContainer(
                    imageUrl: 'assets/masp_sp.jpg',
                    name: 'Museu de Arte de São Paulo',
                    address: 'Endereço: Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200',
                    description: 'Descrição: O Museu de Arte de São Paulo Assis Chateaubriand (MASP) é um museu privado sem fins lucrativos. É considerado um dos mais importantes museus de arte do Hemisfério Sul e o primeiro museu moderno no Brasil. Sua principal missão é institucionalizar o vazio. A curadoria, de lá para cá, faz uma gestão de acervo sem precedentes. Foi fundado em 7 de novembro de 1947 por Assis Chateaubriand e Pietro Maria Bardi.',
                  ),
                  _buildMuseumContainer(
                    imageUrl: 'assets/pinacoteca_sp.jpg',
                    name: 'Pinacoteca de São Paulo',
                    address: 'Endereço: Praça da Luz, 2 - Luz, São Paulo - SP, 01120-010',
                    description: 'Descrição: A Pinacoteca do Estado de São Paulo é um dos mais importantes museus de arte do Brasil. Ocupa um edifício no Jardim da Luz, no centro de São Paulo, projetado por Ramos de Azevedo e Domiziano Rossi para ser a sede do Liceu de Artes e Ofícios. É o mais antigo museu de arte de São Paulo, fundado em 1905 e regulamentado como museu público estadual desde 1911.',
                  ),
                  _buildMuseumContainer(
                    imageUrl: 'assets/ipiranga_sp.jpg',
                    name: 'Museu do Ipiranga',
                    address: 'Endereço: Parque da Independência - Ipiranga, São Paulo - SP, 04263-000',
                    description: 'Descrição: O Museu Paulista da Universidade de São Paulo, conhecido como Museu do Ipiranga, é um museu localizado na cidade de São Paulo, sendo parte do conjunto arquitetônico do Parque da Independência. É o mais importante museu da Universidade de São Paulo e um dos mais visitados da cidade.',
                  ),
                  _buildMuseumContainer(
                    imageUrl: 'assets/arte_moderna_sp.jpg',
                    name: 'Museu de Arte Moderna de São Paulo',
                    address: 'Endereço: Av. Pedro Álvares Cabral, s/n° - Vila Mariana, São Paulo - SP, 04094-000',
                    description: 'Descrição: O Museu de Arte Moderna de São Paulo (MAM) é uma das mais importantes instituições culturais brasileiras. Localizado no Parque do Ibirapuera, na cidade de São Paulo, foi inaugurado em 1948 e é voltado para a produção artística contemporânea. O MAM é reconhecido internacionalmente pela sua relevância histórica e contribuição para a arte moderna e contemporânea no Brasil.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMuseumContainer({
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

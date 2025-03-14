import 'package:flutter/material.dart';

class Mobilelayout extends StatefulWidget {
  const Mobilelayout({super.key});

  @override
  State<Mobilelayout> createState() => _MobilelayoutState();
}

class _MobilelayoutState extends State<Mobilelayout> {
  @override
  Widget build(BuildContext context) {
    bool valor = false;
    return Scaffold(
      backgroundColor: Color(0xFF13131F),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF13131F),
            toolbarHeight: 80,
            flexibleSpace: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: Color(0xFF7B50E0),
                    width: double.infinity,
                    height: 1,
                  ),
                ),
              ],
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  popUpAnimationStyle: AnimationStyle(
                    curve: Curves.decelerate,
                    duration: Duration(milliseconds: 300),
                  ),
                  icon: Icon(Icons.menu, color: Color(0xFF7B50E0)),
                  itemBuilder:
                      (context) => [
                        PopupMenuItem(value: 'Item 2', child: Text('Produtos')),
                        PopupMenuItem(
                          value: 'Item 3',
                          child: Text('Sobre nós'),
                        ),
                        PopupMenuItem(value: 'Item 3', child: Text('Contato')),
                      ],
                ),
                Text(
                  'Portfólio',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.sunny, color: Colors.white),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: 400,
                      height: 300,
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 200,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Olá, eu sou o',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: ' Danilo Cruz :)',
                                        style: TextStyle(
                                          color: Color(0xFF7B50E0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'Desenvolvedor mobile Flutter',
                                style: TextStyle(color: Color(0xFF7B797C)),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('Dawload CV'),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(170, 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF7B50E0),
                                  fixedSize: Size(170, 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  'Entre em contato',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            maxRadius: 100,
                            backgroundColor: Color(0xFF7B50E0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      width: 400,
                      child: Column(
                        children: [
                          Text(
                            'Sobre mim',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text:
                                  'Sou um Desenvolvedor Flutter Mobile apaixonado por tecnologia e inovação. Atualmente, trabalho como ',
                              style: TextStyle(
                                color: Color(0xFF7B797C),
                                fontSize: 15,
                              ),
                              children: [
                                TextSpan(
                                  text: ' estagiário em Flutter',
                                  style: TextStyle(
                                    color: Color(0xFF7B50E0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ', onde estou aprimorando minhas habilidades no desenvolvimento de aplicativos móveis.',
                                ),
                                TextSpan(text: ' Minha principal stack é'),
                                TextSpan(
                                  text: ' Dart e Flutter',
                                  style: TextStyle(
                                    color: Color(0xFF7B50E0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      ', mas também estou expandindo meus conhecimentos em Go, buscando sempre aprender novas tecnologias para melhorar minha capacidade de criar soluções eficientes.',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            }, childCount: 1),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:taverna_do_voriz/cards/personagem/personagem.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Taverna do Voriz'),

              // background: imagem de algum logo que eu vou fazer,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Teste'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        color: index.isOdd
                            ? Colors.blueGrey[400]
                            : Colors.blueGrey[200],
                        height: 100.0,
                        child: Center(
                          child: Text('$personagem()'),
                        ),
                      ),
                    ),
                  ],
                );
              },
              childCount: 20,
            ),
          )
        ],
      ),
    );
  }
}

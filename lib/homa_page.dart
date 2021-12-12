import 'package:flutter/material.dart';
import 'package:taverna_do_voriz/Status%20persona/status_agilidade.dart';
import 'package:taverna_do_voriz/Status%20persona/status_foca.dart';
import 'package:taverna_do_voriz/Status%20persona/status_inteligencia.dart';
import 'package:taverna_do_voriz/Status%20persona/status_vida.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  int count = 0;

  void decrament() {
    setState(() {
      count--;
    });
    print(count);
  }

  void incrament() {
    setState(() {
      count++;
    });
    print(count);
  }

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
                child: Text('Status Primarios'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    // implementando vida.
                    //
                    VidaPersona(),
                    //
                    // fim vida.
                    // implementando os demais status.
                    //
                    ForcaPersona(),
                    const AgilidadePersona(),
                    const IntPersona(),
                  ],
                );
              },
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

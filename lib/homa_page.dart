import 'package:flutter/material.dart';
import 'package:taverna_do_voriz/Status%20persona/status_agilidade.dart';
import 'package:taverna_do_voriz/Status%20persona/status_defesa.dart';
import 'package:taverna_do_voriz/Status%20persona/status_foca.dart';
import 'package:taverna_do_voriz/Status%20persona/status_inteligencia.dart';
import 'package:taverna_do_voriz/Status%20persona/status_sanidade.dart';
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
          // Iniciando AppBar
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 120,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Taverna do Voriz'),
              centerTitle: true,

              // background: imagem de algum logo que eu vou fazer,
              //
            ),
          ),
          //
          //Fim AppBAr
          //
          //Caixa de textoinformativo
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text('Status Primarios'),
              ),
            ),
          ),
          //
          //Fim caixa informação
          //
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: const [
                    // implementando vida.
                    //
                    VidaPersona(),
                    //
                    // fim vida.
                    // implementando os demais status.
                    //
                    DefesaPersona(),
                    ForcaPersona(),
                    AgilidadePersona(),
                    IntPersona(),
                    SanidadePerson(),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text('Status Secundarios'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      child: Container(
                        height: 200,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}

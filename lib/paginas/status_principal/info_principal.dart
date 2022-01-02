import 'package:flutter/material.dart';
import 'package:taverna_do_voriz/Status_persona/status_agilidade.dart';
import 'package:taverna_do_voriz/Status_persona/status_defesa.dart';
import 'package:taverna_do_voriz/Status_persona/status_foca.dart';
import 'package:taverna_do_voriz/Status_persona/status_inteligencia.dart';
import 'package:taverna_do_voriz/Status_persona/status_sanidade.dart';
import 'package:taverna_do_voriz/Status_persona/status_vida.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text('Status Primarios'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: const [
                    VidaPersona(),
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
        ],
      ),
    );
  }
}

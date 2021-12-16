import 'package:flutter/material.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Conhecimento.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Furtividade.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Ladinagem.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Lideranca.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Manejo.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Performace.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Sobrevivencia.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_Vontade.dart';
import 'package:taverna_do_voriz/Status_secundario/secun_percepcao.dart';

class StatusSecundario extends StatefulWidget {
  const StatusSecundario({Key? key}) : super(key: key);

  @override
  _StatusSecundarioState createState() => _StatusSecundarioState();
}

class _StatusSecundarioState extends State<StatusSecundario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
                  children: const [
                    Conhecimento(),
                    Furtividade(),
                    Ladinagem(),
                    Lideranca(),
                    Manejo(),
                    Percepcao(),
                    Performace(),
                    Percepcao(),
                    Sobrevivencia(),
                    Vontade(),
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

import 'package:flutter/material.dart';

class SanidadePerson extends StatefulWidget {
  const SanidadePerson({Key? key}) : super(key: key);

  @override
  _SanidadePersonState createState() => _SanidadePersonState();
}

class _SanidadePersonState extends State<SanidadePerson> {
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
    return Card(
      color: Colors.blueGrey[400],
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Sanidade',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: incrament,
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: decrament,
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

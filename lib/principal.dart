import 'package:flutter/material.dart';
import 'telea1.dart';
import 'tela2.dart';
import 'tela3.dart';

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: SingleChildScrollView(


        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

        Padding(
        padding: const EdgeInsets.only(top: 200, bottom: 20),
          child: SizedBox(
            height: 50.0,
            child: ElevatedButton(
              child: const Text('Levar para tela 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Principal1()),
                );
              },
            ),
            ),
          ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    child: const Text('Levar para tela 2'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Principal2()),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                    child: const Text('Levar para tela 3'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Principal3()),
                      );
                    },
                  ),
                ),
              ),
         ],
      ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key}) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  String _mensagem = "Clique para iniciar o upload";
  double _porcentagem = 0.0;
  Color _corBarra = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton.extended(
              onPressed: () {
                Random random = Random();
                _porcentagem += random.nextDouble() * 10;

                if (_porcentagem < 100) {
                  setState(() {
                    _mensagem = "${_porcentagem.toStringAsFixed(1)}%";
                  });
                } else {
                  setState(() {
                    _mensagem = "Upload completo";
                    _corBarra = Colors.green;
                  });
                }
              },
              label: const Text("Upload"),
              icon: const Icon(Icons.file_upload),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              _mensagem,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.blueGrey,
                decoration: TextDecoration.none,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: LinearProgressIndicator(
                value: _porcentagem / 100,
                minHeight: 15,
                color: _corBarra,
                backgroundColor: Colors.amber.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

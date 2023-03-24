import 'package:flutter/material.dart';

class Pairing extends StatelessWidget {
  const Pairing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bluetooth Pairing'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Selectmode())
            );
          },
          child: const Text('Pairing'),
        ),
      ),
    );
  }
}
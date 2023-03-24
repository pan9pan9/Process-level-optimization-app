import 'pairing.dart';
import 'package:flutter/material.dart';

class Selectmode extends StatelessWidget {
  const Selectmode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select mode'),
      ),
      body: Center(
         child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("입고"),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pairing())
                );
              },
            ),
            SizedBox(
              width: 8,
            ),
            ElevatedButton(
              child: Text("출고"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ],
        )
      ) 
    );
  }
}
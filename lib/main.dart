import 'package:flutter/material.dart';

void main() {
    runApp(const MaterialApp(
      title: 'PLOA',
      home: Login(),
    ));

}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      '/lg.jpg',
                      width: 160,
                      height: 160,
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        initialValue: 'factoreal',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8, bottom: 16),
                      child: TextFormField(
                        obscureText: true,
                        initialValue: 'factoreal',
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text("Login"),
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
                        child: Text("Cancel"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}

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
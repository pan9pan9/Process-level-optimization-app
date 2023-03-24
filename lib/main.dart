import 'package:flutter/material.dart';
import 'pairing.dart';

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
    final TextEditingController idcontroller = TextEditingController();
    final TextEditingController pwcontroller = TextEditingController();
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 15),
        minimumSize: Size(100, 50));

    
    bool isFactoreal = false;

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
                        controller: idcontroller,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Id'
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 8, bottom: 16),
                      child: TextFormField(
                        controller: pwcontroller,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Password'
                        ),
                      )),
                      ElevatedButton(
                        style: style,
                        child: Text("Login"),
                        onPressed: (){
                          if(idcontroller.text == 'factoreal' && pwcontroller.text == 'factoreal'){
                              isFactoreal = true;
                          }
                          else {
                            isFactoreal = false;
                          }
                          if(isFactoreal){
                            Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Pairing())
                          );
                          }
                          else{
                            showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('ID, PW가 틀렸습니다.'),
                              actions: [
                                TextButton(
                                  child: const Text('확인'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                          }
                          
                        },
                      ),
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
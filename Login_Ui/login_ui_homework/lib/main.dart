import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
              Stack(
                children: [
                  Image.asset('images/background.png'),
                  Positioned(
                    left: 30,
                    width: 80,
                    height: 170,
                    child: Image.asset('images/light-1.png')),
                    Positioned(
                    left: 130,
                    width: 80,
                    height: 140,
                    child: Image.asset('images/light-2.png')),
                     Positioned(
                       top: 50,
                    right: 30,
                    width: 80,
                    height: 140,
                    child: Image.asset('images/clock.png')),
                    const Positioned(
                      top: 180,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Text('Login',
                        style: TextStyle(color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                ],
              ),
              Card(
                margin: const EdgeInsets.all(20),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal : 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email or Phone Number',
                      labelStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal : 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                )
              ],),),
              Container(
                margin: const EdgeInsets.all(30),
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient:  LinearGradient(
                                  colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ])
                ),
                child: const Text('Login',
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.bold),),
              ),
        
              const Center(
                child: Text('Forgot Password',
                style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),),
              )
          ],),
        ),
      ),
      
    );
  }
}


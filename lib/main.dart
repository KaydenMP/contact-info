import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 85, 106, 123),
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.lime,
              height: 600,
              width: 330,
              child: Card(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Image(
                        image: AssetImage('assets/kuroba kaito-modified.png')),
                    const Text("Kaito Kid ",
                        style: TextStyle(
                          fontFamily: 'Uchen',
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic)),
                    const Text(
                      'The Notorious Phamton Thief',
                      style:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
                    ),
                    Container(
                      height: 60,
                      width: 250,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Expanded(
                              child: ListTile(
                            leading: Icon(
                              Icons.phone_android_rounded,
                              size: 35,
                              color: Color.fromARGB(255, 19, 2, 83),
                            ),
                            title: Text(
                              '092860059347',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      )),
                    ),
                    Container(
                      height: 60,
                      width: 270,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Expanded(
                              child: ListTile(
                            leading: Icon(
                              Icons.mail_rounded,
                              size: 35,
                              color: Color.fromARGB(255, 2, 42, 73),
                            ),
                            title: Text(
                              'kidKaito@gmail.com',
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                            ),
                          ))
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

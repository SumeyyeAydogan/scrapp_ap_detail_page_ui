import 'package:flutter/cupertino.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Gorunum(title: ''),
    );
  }
}

class Gorunum extends StatefulWidget {
  const Gorunum({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Gorunum> createState() => _GorunumState();
}

class _GorunumState extends State<Gorunum> {
  String atikTuru = "";

  onChangeFunction(String newValue) {
    setState(() {
      atikTuru = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CAM",
            style: TextStyle(fontSize: 22),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey[100],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/glass.png'),
              Container(
                //color: Colors.blueGrey,
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 50, bottom: 20),
                          //color: Colors.purple,
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_city,
                                color: Colors.green,
                              ),
                              Text("Afyonkarahisar",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.green,
                                ),
                                Text("Ataköy",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          //color: Colors.grey,
                          padding: EdgeInsets.only(right: 70, bottom: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.balance_rounded,
                                color: Colors.green,
                              ),
                              Text("10 kg",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on_rounded,
                                  color: Colors.green,
                                ),
                                Text("1000 TL",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, right: 20, left: 20),
                //color: Colors.grey[500],
                child: Column(
                  children: [
                    Text(
                      "AÇIKLAMA",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Geri dönüşüm terim olarak, kullanım dışı kalan geri dönüştürülebilir atık malzemelerin çeşitli geri dönüşüm yöntemleri ile ham madde olarak tekrar imalat süreçlerine kazandırılmasıdır.[1]",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

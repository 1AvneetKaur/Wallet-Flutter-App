import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[900],
        title: RichText(
            text: TextSpan(children: [
          WidgetSpan(child: Icon(Icons.arrow_back, color: Colors.white)),
          TextSpan(
              text: '           Wallet                                  ',
              style: TextStyle(fontSize: 22)),
          WidgetSpan(child: Icon(Icons.send, color: Colors.white70))
        ])),
      ),
      body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .35,
                  decoration: BoxDecoration(color: Colors.purple[900]),
                  child: Column(children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text('   '),
                        Icon(Icons.minimize_outlined, color: Colors.white30),
                        Text('                 '),
                        Icon(Icons.shopping_bag, color: Colors.white30),
                        Text('                 '),
                        Icon(Icons.house, color: Colors.white30),
                        Text('                 '),
                        Icon(Icons.attach_money, color: Colors.white30),
                        Text('                 '),
                        Icon(Icons.network_wifi, color: Colors.white30)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('   '),
                        Text('Home           ',
                            style: TextStyle(color: Colors.white30)),
                        Text('Deals              ',
                            style: TextStyle(color: Colors.white30)),
                        Text('Wallet            ',
                            style: TextStyle(color: Colors.white30)),
                        Text('Finance          ',
                            style: TextStyle(color: Colors.white30)),
                        Text('History', style: TextStyle(color: Colors.white30))
                      ],
                    ),
                    Container(child: Text('\n')),
                    Container(width: 400, height: 1.5, color: Colors.white30),
                    Row(children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('   \nWALLET CASH', style:TextStyle(fontSize: 16, color: Colors.white)),
                          RichText(
                              text: TextSpan(children: [
                            WidgetSpan(
                                child: Icon(
                              Icons.attach_money,
                              color: Colors.orange[300],
                              size: 16,
                            )),
                            TextSpan(
                                text: '1250\n',
                                style: TextStyle(
                                    color: Colors.orange[300],
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold))
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: '\t\t\tWALLET POINTS',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white)),
                            TextSpan(
                                text: '\t\t0',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 18, color: Colors.orange[300]))
                          ]))
                        ],
                      ),
                      Text('\t\t\t\t                     '),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('\n\n'),
                          Row(children: <Widget>[
                            Icon(Icons.replay, color: Colors.white60),
                            Text('\t\t\t'),
                            Container(
                                height: 55,
                                width: 100,
                                color: Colors.cyan[400],
                                child: Text('\n\t\t\t\t\t\tTOP UP',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white))),
                          ])
                        ],
                      )
                    ]),
                  ])),
              Positioned(
                  top: MediaQuery.of(context).size.height * .25,
                  left: 15,
                  right: 15,
                  child: Card(
                      elevation: 5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                          width: MediaQuery.of(context).size.height * .90,
                          height: 220,
                          child: Row(
                            children: <Widget>[
                              Text("       "),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.add_to_home_screen,
                                      color: Colors.purple[900], size: 32),
                                  Text(
                                    '\nTransfer',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.purple[900]),
                                  )
                                ],
                              ),
                              Container(
                                  height: 15, width: 2, color: Colors.black26),
                              Text("              "),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.settings_overscan,
                                      color: Colors.purple[900], size: 32),
                                  Text(
                                    '\nScan',
                                    style: TextStyle(
                                        color: Colors.purple[900],
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              Text("              "),
                              Container(
                                  height: 25, width: 3, color: Colors.black26),
                              Column(
                                children: <Widget>[
                                  Icon(Icons.perm_contact_calendar,
                                      color: Colors.purple[900], size: 32),
                                  Text(
                                    '\nProfile',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.purple[900]),
                                  )
                                ],
                              ),
                            ],
                          ))))
            ],
          ),
          Text("\n\n"),
          Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              color: Colors.white,
              child: Container(color: Colors.white, height: 90, width: 370,
              child: Row(children: <Widget>[
                Container(height: 80, width: 4,color: Colors.deepPurple),
                Text('\t\t\t\t\t\t\t\t'),
                Icon(Icons.home, color: Colors.deepPurple, size: 26),
                Text('\t\t\t\t\t\t\t\t'),
                Text('Home', style: TextStyle(color: Colors.black38, fontSize: 20))
              ],),)),
          Text("\n"),
          Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              color: Colors.white,
              child: Container(color: Colors.white, height: 90, width: 370,
                child: Row(children: <Widget>[
                  Container(height: 80, width: 4,color: Colors.deepPurple),
                  Text('\t\t\t\t\t\t\t\t'),
                  Icon(Icons.directions_bus, color: Colors.deepPurple, size: 26),
                  Text('\t\t\t\t\t\t\t\t'),
                  Text('Transport', style: TextStyle(color: Colors.black38, fontSize: 20))
                ],),)),
          Text('\n'),
          Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              color: Colors.white,
              child: Container(color: Colors.white, height: 90, width: 370,
                child: Row(children: <Widget>[
                  Container(height: 80, width: 4,color: Colors.deepPurple),
                  Text('\t\t\t\t\t\t\t\t'),
                  Icon(Icons.shopping_cart, color: Colors.deepPurple, size: 26),
                  Text('\t\t\t\t\t\t\t\t'),
                  Text('Shopping', style: TextStyle(color: Colors.black38, fontSize: 20))
                ],),))
        ],
      ),
    );
  }
}

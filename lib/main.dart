import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 240,
                decoration: BoxDecoration(
                    color: Colors.purple[400],
                    borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(30.0),
                      bottomEnd: Radius.circular(30.0),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.article_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage("assets/img/1.jpg"),
                    ),
                    Icon(
                      Icons.all_inclusive,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 110,
                left: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Shitzu Photographers',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Is counting the days with you!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '75 Days left until 19 May 2020',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.article,
                            color: Colors.purple,
                            size: 40.0,
                          ),
                        ),
                        Positioned(
                            left: 9.0, top: 50.0, child: Text('Contract')),
                        Positioned(
                          left: 45.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.red,
                            child: Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.account_balance_wallet,
                            color: Colors.purple,
                            size: 40.0,
                          ),
                        ),
                        Positioned(
                            left: 9.0, top: 50.0, child: Text('Finance')),
                        Positioned(
                          left: 45.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.red,
                            child: Text(
                              '8',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.photo,
                            color: Colors.purple,
                            size: 40.0,
                          ),
                        ),
                        Positioned(left: 9.0, top: 50.0, child: Text('Photos')),
                        Positioned(
                          left: 45.0,
                          child: CircleAvatar(
                            radius: 10.0,
                            backgroundColor: Colors.red,
                            child: Text(
                              '12',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.movie,
                            color: Colors.purple,
                            size: 40.0,
                          ),
                        ),
                        Positioned(left: 9.0, top: 50.0, child: Text('Movies')),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 65,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.purple,
                            size: 40.0,
                          ),
                        ),
                        Positioned(
                            left: 5.0, top: 50.0, child: Text('Location')),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 345,
                    height: 159,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Dec 18, 2020',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        )),
                  ),
                  Positioned(
                    top: 37.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('15:00',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 70.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Videoclip',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17.0,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 100.0,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('Island beach, Hadera',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16.0,
                              color: Colors.black.withOpacity(0.6))),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[400],
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
        onPressed: () {},
      ),
    );
  }
}

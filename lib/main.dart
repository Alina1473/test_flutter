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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          shadowColor: Colors.white,
          color: Colors.white,
        ),
      ),
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

    Widget customAppBar = Container(
      decoration: BoxDecoration(
          color: Colors.purple[400],
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(30.0),
            bottomEnd: Radius.circular(30.0),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
        child: Column(
          children: <Widget>[
            Row(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    'Shitzu Photographers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Is counting the days with you!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
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
            )
          ],
        ),
      ),
    );

    Widget iconSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildIconColumn(Icons.article, 'Contract'),
          _buildIconColumn(Icons.account_balance_wallet, 'Finance'),
          _buildIconColumn(Icons.photo, 'Photos'),
          _buildIconColumn(Icons.movie, 'Movies'),
          _buildIconColumn(Icons.location_on, 'Location'),
        ],
      ),
    );

    var date = ["Dec 18, 2020", "Dec 21, 2020"];

    var time = ["15:00", "17:00"];

    var description = ["Videoclip1", "Videoclip2"];

    var place = ["Island beach, Hadera", "Haifa zoo, Hatishbi 124, Haifa"];

    Widget eventList = ListView.builder(
      itemCount: date.length,
      itemBuilder: (context, index) {
        return Container(
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
          margin: EdgeInsets.only(left: 16, right: 16, top: 10),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    date[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.purple,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(time[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description[index],
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17.0,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(place[index],
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.black.withOpacity(0.6))),
                ),
              ],
            ),
          ),
        );
      },
    );

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(240),
        child: AppBar(
          flexibleSpace: customAppBar,
        ),
      ),
      body: Column(
        children: <Widget>[
         iconSection,
          Expanded(
            child: eventList,
          )
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

  Column _buildIconColumn(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
          ),
          margin: const EdgeInsets.only(top: 8),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                color: Colors.purple,
                size: 40.0,
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

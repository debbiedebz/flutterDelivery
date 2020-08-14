import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Delivery',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: TextTheme(
          headline6:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      home: MyHomePage(title: 'Flutter Delivery'),
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
  //Just parked for later when there is a DB Connection to get customer name
  String customerName = 'MyName';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE2B7),
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      //TODO: Bottom Nav Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffF77F00),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.history),
            title: new Text('Previous'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.favorite),
            title: new Text('Favorites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Spacer(flex: 1),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //TODO: Row1 - Greeting
                  Spacer(flex: 1),
                  const Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hello ',
                          style: TextStyle(
                            color: Color(0xff264653),
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: 'Debra', //replace with Customer Name later
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff264653),
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                          ),
                        ),
                        TextSpan(
                          text: '!\nWhat would you like to order today?',
                          style: TextStyle(
                            color: Color(0xff264653),
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(flex: 1),
                  //TODO: Row1 - Profile Image
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Color(0xff003049),
                  ),
                  Spacer(flex: 1),
                  /* <<Replace icons with Circle Avatar below later when app is connected
                  to account DB later>>
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/profilePhoto.png'),
                  ),
                  */
                ],
              ),
            ),
            Spacer(flex: 1),
            //TODO: Row2 - Search bar
            Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Dish, Store, Drinks, or Dessert',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    decoration: BoxDecoration(
                      color: Color(0xffF77F00),
                      borderRadius: BorderRadius.all(
                        const Radius.circular(8),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            //TODO: Row3 - Menu options
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        color: Color(0xffD62828),
                        width: (MediaQuery.of(context).size.width - 10) / 4.5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/snack.png'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        color: Color(0xffD62828),
                        width: (MediaQuery.of(context).size.width - 10) / 4.5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/dimsum.png'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        color: Color(0xffD62828),
                        width: (MediaQuery.of(context).size.width - 10) / 4.5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/dessert.png'),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        color: Color(0xffD62828),
                        width: (MediaQuery.of(context).size.width - 10) / 4.5,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              child: Image.asset('images/coffee.png')),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    KahitSaanButton(),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            //TODO: Row4 - Best Sellers
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 15.0,
                  ),
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.fromLTRB(17, 0, 15, 10),
                  decoration: BoxDecoration(
                    color: Color(0xffF77F00),
                    border: Border.all(
                      color: Color(0xffFCBF49),
                    ),
                  ),
                  child: Text(
                    ' Today\'s Best Sellers: ',
                    style: TextStyle(
                      backgroundColor: Color(0xffF77F00),
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 12,
                        padding: EdgeInsets.all(5.0),
                        margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                        decoration: BoxDecoration(
                          color: Color(0xffF77F00),
                          border: Border.all(
                            color: Color(0xffFCBF49),
                          ),
                          borderRadius: BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        child: Icon(Icons.chevron_left),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 5, 20),
                      padding: EdgeInsets.all(5.0),
                      color: Color(0xffD62828),
                      width: (MediaQuery.of(context).size.width - 10) / 3,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset('images/option1.png'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 5, 20),
                      padding: EdgeInsets.all(5.0),
                      color: Color(0xffD62828),
                      width: (MediaQuery.of(context).size.width - 10) / 3,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset('images/option2.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width) / 12,
                        padding: EdgeInsets.all(5.0),
                        margin: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                        decoration: BoxDecoration(
                          color: Color(0xffF77F00),
                          border: Border.all(
                            color: Color(0xffFCBF49),
                          ),
                          borderRadius: BorderRadius.all(
                            const Radius.circular(8),
                          ),
                        ),
                        child: Icon(Icons.chevron_right),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class KahitSaanButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 15.0,
      ),
      width: (MediaQuery.of(context).size.width - 10),
      child: RaisedButton(
        color: Color(0xffD62828),
        elevation: 10.0,
        onPressed: () {},
        child: const Text(
          'Kahit Ano! <Randomizer>',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final navTabs = [
    Center(
      child: Text('Wallet'),
    ),
    Center(
      child: Text('Balance'),
    ),
    Center(
      child: Text('Account'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SizedBox(
              height: MediaQuery.of(context).size.height / 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text(
                    'Flutter Learning',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Container(
            alignment: Alignment.center,
              child: navTabs[_currentIndex],
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          customAlertDialog(context);
        },
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.cyan.shade700,
        type: BottomNavigationBarType.fixed,
        iconSize: 32.0,
        selectedFontSize: 24.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Balance'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account')
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

void customAlertDialog(BuildContext context) {
  var dialog = AlertDialog(
    title: Text('Do you want add some items.'),
    content: Text('Attention'),
  );
  showDialog(context: context, builder: (context) => dialog);
}

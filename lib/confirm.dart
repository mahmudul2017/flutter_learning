import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          color: Colors.green,
          child: Text('Confirm !!', style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
